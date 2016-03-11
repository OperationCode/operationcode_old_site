require 'slack/client'

class SlackNotifierJob < ActiveJob::Base
  queue_as :default

  rescue_from do |exception|
    Rails.logger.debug("Caught exception: #{exceptin.inspect}")
  end

  def perform(message)
    res = slack_client.post_message_to channel: '#general', with_text: message
    Rails.logger.debug("Notified channel: #{res.inspect}")
  end

  private

  def slack_client
    @slack_client ||= Slack::Client.new(
      subdomain: ENV.fetch("SLACK_SUBDOMAIN"),
      token:     ENV.fetch("SLACK_TOKEN")
    )
  end
end
