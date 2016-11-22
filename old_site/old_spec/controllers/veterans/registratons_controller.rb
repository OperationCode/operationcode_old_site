require 'rails_helper'

describe RegistrationsController do
  describe '#new' do
    it 'makes a new record' do
      get :new
      expect(assigns(:veteran)).to be_new_record
    end

    it 'renders the #new template' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe '#create' do
    let(:veteran_params) do
      {
        email: 'billybob@email.com',
        first_name: 'Billy',
        last_name: 'Bob',
        password: 'password',
        password_confirmation: 'password'
      }
    end

    before do
      allow_any_instance_of(Veteran).to receive(:new)
      allow_any_instance_of(Veteran).to receive(:send_slack_invitation)
      allow_any_instance_of(Veteran).to receive(:add_to_mailchimp)
    end

    it 'makes a new record with the params' do
      expect(Veteran).to receive(:new).with(veteran_params).and_return( Veteran.new(veteran_params))
      post :create, veteran: veteran_params, format: :html
    end

    context 'when the record saves successfully' do
      describe '#html' do
        it 'redirects to the veterans profile' do
          post :create, veteran: veteran_params, format: :html
          expect(response).to redirect_to profile_path
        end

        it 'shows a notice' do
          post :create, veteran: veteran_params, format: :html
          expect(flash[:notice]).to include('Thanks for signing up!')
        end

        it 'sends a wecome email' do
          user_mailer_double = double(UserMailer, welcome: '<h1>A Mailer</h1>')
          allow(UserMailer).to receive(:welcome).and_return(user_mailer_double)

          expect(user_mailer_double).to receive(:deliver_now).and_return(true)

          post :create, veteran: veteran_params, format: :html
        end

        it 'sends slack invitation' do
          expect_any_instance_of(Veteran).to receive(:send_slack_invitation).exactly(1).times
          post :create, veteran: veteran_params, format: :html
        end

        it 'adds to Mailchimp' do
          expect_any_instance_of(Veteran).to receive(:add_to_mailchimp).exactly(1).times
          post :create, veteran: veteran_params, format: :html
        end
      end
    end

    context 'when the record does not save successfully' do
      before do
        allow_any_instance_of(Veteran).to receive(:save).and_return(false)
      end

      describe '#html' do
        it 'does not send the welcome email' do
          expect(UserMailer).to_not receive(:welcome)
          post :create, veteran: veteran_params, format: :html
        end

        it 'renders the new template' do
          post :create, veteran: veteran_params, format: :html
          expect(response).to render_template(:new)
        end
      end
    end
  end
end
