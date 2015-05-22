class SlackInviterJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    slack_client.invite \
      email:    email,
      channels: ENV["SLACK_CHANNELS"].to_s.split(/\s*,\s*/)
  end

  private

  def slack_client
    @slack_client ||= Slack::Client.new \
      subdomain: ENV.fetch("SLACK_SUBDOMAIN"),
      token:     ENV.fetch("SLACK_TOKEN")
  end
end
