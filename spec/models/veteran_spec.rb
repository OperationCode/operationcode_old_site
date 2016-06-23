require 'rails_helper'

describe Veteran do
  describe 'validating the email address' do
    context 'when an email address is the correct format' do
      let(:new_veteran) { build(:veteran) }

      it 'is valid' do
        expect(new_veteran).to be_valid
      end
    end

    context 'when an email address is not the correct format' do
      let(:new_veteran) { build(:veteran, email: 'bademail') }

      it 'is not valid' do
        expect(new_veteran).to_not be_valid
      end
    end
  end

  describe '#name' do
    context 'when a veteran has a first name or last name' do
      let(:veteran) { create(:veteran) }

      before do
        expect(veteran.first_name).to_not be_nil
        expect(veteran.last_name).to_not be_nil
      end

      it 'returns the first name and last name' do
        expect(veteran.name).to eq("#{veteran.first_name} #{veteran.last_name}")
      end
    end

    context 'when a veteran does not have a first name or last name' do
      let(:veteran) { create(:veteran, first_name: nil, last_name: nil) }

      it 'returns the email address' do
        expect(veteran.name).to eq(veteran.email)
      end
    end
  end

  describe '#add_to_mailchimp' do
    let(:api_key) { 'abc123' }
    let(:list_id) { 'my_list_id' }
    let(:gibbon)  { Gibbon::Request.new(api_key: api_key) }

    let(:veteran) { create(:veteran) }

    before do
      ENV['MAILCHIMP_API_KEY'] = api_key
      ENV['MAILCHIMP_LIST_ID'] = list_id

      allow(Gibbon::Request).to receive(:new).and_return(gibbon)
      allow(gibbon).to receive_message_chain(:lists, :members, :create).and_return('200')
    end

    # TODO: Move these to an active job test
    # it 'creates a new instance of Gibbon' do
    #   expect(Gibbon::Request).to receive(:new).with(api_key: api_key).and_return(gibbon)
    #   veteran.add_to_mailchimp
    # end

    # it 'finds the the correct list' do
    #   expect(gibbon).to receive(:lists).with(list_id)
    #   veteran.add_to_mailchimp
    # end

    # it 'adds the veteran as a member to the list' do
    #   expect(gibbon).to receive_message_chain(:lists, :members, :create).with(
    #     body: {
    #       email_address: veteran.email,
    #       status: 'subscribed',
    #       merge_fields: {
    #         FNAME: veteran.first_name,
    #         LNAME: veteran.last_name
    #       }
    #     }
    #   )

    #   veteran.add_to_mailchimp
    # end
  end
end
