require 'slack/client'

class SlackInviterJob < ActiveJob::Base
  queue_as :default

  def perform(email)
    # Invites user to general channel
    slack_client.invite(email: email, channels: ["C03GSNF77"])
  end

  private

  def slack_client
    @slack_client ||= Slack::Client.new(
      subdomain: OperationCode.fetch_secret_with(name: :slack_subdomain),
      token:     OperationCode.fetch_secret_with(name: :slack_token)
    )
  end
end
