require 'slack/client'

module Slack
  # Utilities class for running methods and discovery on Client
  class Utils
    def email_is_registered?(email)
      users_list = client.fetch_users_list
      users_list['members'].each do |m|
        return true if m['profile']['email'] == email
      end
      false
    end

    def client
      @slack_client ||= set_client
    end

    private

    def set_client
      Slack::Client.new \
        subdomain: ENV['SLACK_DOMAIN'],
        token:     ENV['SLACK_TOKEN']
    end
  end
end
