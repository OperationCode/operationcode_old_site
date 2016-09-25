require 'slack/client'

class SlackNotifierJob < ActiveJob::Base
  queue_as :default

  def perform(message, channel: '#general')
    res = slack_client.post_message_to channel: channel, with_text: message
    Rails.logger.debug("Notified channel: #{res.inspect}")
  end

  private

  def slack_client
    @slack_client ||= Slack::Client.new(
      subdomain: ENV.fetch('SLACK_SUBDOMAIN'),
      token:     ENV.fetch('SLACK_TOKEN')
    )
  end
end
