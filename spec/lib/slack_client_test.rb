require 'rails_helper'
require 'slack/client'

describe Slack::Client do
  before(:all) do
    @subdomain_env = ENV.fetch("SLACK_SUBDOMAIN")
    @slack_client ||= Slack::Client.new(
      subdomain: @subdomain_env,
      token: ENV.fetch("SLACK_TOKEN")
    )
  end

  describe 'inviting a user' do
    it 'returns true if all is well' do
      stub_request(:post, /https:\/\/#{@subdomain_env}\.slack\.com\/api\/users\.admin\.invite.*/)
        .to_return(:status => 200, :body => '{"ok": true}', :headers => {})

      res = @slack_client.invite(email: 'test@example.com', channels: ['test'])
      expect(res).to equal true
    end

    it 'raises a RquestFailed error on failure' do
      stub_request(:post, /https:\/\/#{@subdomain_env}\.slack\.com\/api\/users\.admin\.invite.*/)
        .to_return(:status => 500, :body => '{"ok": false}', :headers => {})

      expect{@slack_client.invite(email: 'test@example.com', channels: ['test'])}.to raise_error(Slack::Client::RequestFailed)
    end
  end
end
