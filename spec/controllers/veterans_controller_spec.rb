require "rails_helper"

describe VeteransController do
  describe "#new" do
    it "makes a new record" do
      get :new
      expect(assigns(:veteran)).to be_new_record
    end

    it "renders the #new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "#create" do
    let(:veteran_params) do
      {
        email: "billybob@email.com",
        first_name: "Billy",
        last_name: "Bob"
      }
    end

    let(:api_key) { 'abc123' }
    let(:list_id) { 'my_list_id' }
    let(:gibbon)  { Gibbon::Request.new(api_key: api_key) }


    before do
      allow_any_instance_of(Veteran).to receive(:new)
      allow_any_instance_of(Veteran).to receive(:send_slack_invitation)

      ENV['MAILCHIMP_API_KEY'] = api_key
      ENV['MAILCHIMP_LIST_ID'] = list_id

      allow(Gibbon::Request).to receive(:new).and_return(gibbon)
      allow(gibbon).to receive_message_chain(:lists, :members, :create).and_return('200')
    end

    it "makes a new record with the params" do
      expect(Veteran).to receive(:new).with(veteran_params).and_return(Veteran.new(veteran_params))
      post :create, veteran: veteran_params, format: :html
    end

    context "when the record saves successfully" do
      describe "#html" do
        it "redirects to the action_path" do
          post :create, veteran: veteran_params, format: :html
          expect(response).to redirect_to(action_path)
        end

        it "shows a notice" do
          post :create, veteran: veteran_params, format: :html
          expect(flash[:notice]).to include('Thanks for signing up!')
        end

        it "sends a wecome email" do
          user_mailer_double = double(UserMailer, welcome: "<h1>A Mailer</h1>")
          allow(UserMailer).to receive(:welcome).and_return(user_mailer_double)

          expect(user_mailer_double).to receive(:deliver_now).and_return(true)

          post :create, veteran: veteran_params, format: :html
        end

        it "sends slack invitation" do
          expect_any_instance_of(Veteran).to receive(:send_slack_invitation).exactly(1).times
          post :create, veteran: veteran_params, format: :html
        end

        context 'adding to the Mailchimp list' do
          it 'creates a new instance of Gibbon' do
            expect(Gibbon::Request).to receive(:new).with(api_key: api_key).and_return(gibbon)
            post :create, veteran: veteran_params, format: :html
          end

          it 'finds the the correct list' do
            expect(gibbon).to receive(:lists).with(list_id)
            post :create, veteran: veteran_params, format: :html
          end

          it 'adds the veteran as a member to the list' do
            expect(gibbon).to receive_message_chain(:lists, :members, :create).with(
              body: {
                email_address: veteran_params[:email],
                status: 'subscribed',
                merge_fields: {
                  FNAME: veteran_params[:first_name],
                  LNAME: veteran_params[:last_name]
                }
              }
            )

            post :create, veteran: veteran_params, format: :html
          end
        end
      end

      describe "#json" do
        it "renders the show view" do
          post :create, veteran: veteran_params, format: :json
          expect(response).to render_template(:show)
        end
      end
    end

    context "when the record does not save successfully" do
      before do
        allow_any_instance_of(Veteran).to receive(:save).and_return(false)
      end

      describe "#html" do
        it "does not send the welcome email" do
          expect(UserMailer).to_not receive(:welcome)
          post :create, veteran: veteran_params, format: :html
        end

        it "renders the new template" do
          post :create, veteran: veteran_params, format: :html
          expect(response).to render_template(:new)
        end
      end

      describe "#json" do
        it "renders the errors" do
          allow_any_instance_of(Veteran).to receive(:errors).and_return("ERRORZ")

          post :create, veteran: veteran_params, format: :json
          expect(response.body).to include("ERRORZ")
        end
      end
    end
  end
end
