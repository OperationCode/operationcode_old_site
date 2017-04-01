class MailchimpInviterJob < ActiveJob::Base
  queue_as :default

  def perform(email:, first_name:, last_name:)
    begin
      gibbon = Gibbon::Request.new(api_key: OperationCode.fetch_secret_with(name: :mailchimp_api_key))
      list_id = OperationCode.fetch_secret_with name: :mailchimp_list_id

      gibbon.lists(list_id).members.create(
        body: {
          email_address: email,
          status: 'subscribed',
          merge_fields: { FNAME: first_name, LNAME: last_name }
        }
      )
    rescue Gibbon::GibbonError=> e
      logger.info "There is a problem with Mailchimp Invite: #{e.message}"
    end
  end
end
