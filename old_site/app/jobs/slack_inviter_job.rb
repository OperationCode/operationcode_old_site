require 'slack/client'

class SlackInviterJob < ActiveJob::Base
  queue_as :default

  def perform(email)
    # Invites user to general channel
    slack_client.invite \
      email:    email,
      channels: ["C03GSNF77"]
  end

  private

  def slack_client
    @slack_client ||= Slack::Client.new \
      subdomain: ENV.fetch("SLACK_SUBDOMAIN"),
      token:     ENV.fetch("SLACK_TOKEN")
  end
end
