require 'rails_helper'
require 'slack/client'

describe Slack::Client do
  before(:all) do
    @subdomain_env = ENV.fetch('SLACK_SUBDOMAIN')
    @slack_client ||= Slack::Client.new(
      subdomain: @subdomain_env,
      token: ENV.fetch('SLACK_TOKEN')
    )
  end

  describe 'inviting a user' do
    before(:all) do
      @post_url = URI.join(
        "https://#{@slack_client.domain}",
        Slack::INVITE_PATH
      ).to_s
    end

    it 'returns true if all is well' do
      stub_request(:post, /#{Regexp.quote(@post_url)}.*/).to_return(
        status: 200, body: '{"ok": true}', headers: {}
      )

      res = @slack_client.invite(email: 'test@example.com', channels: ['test'])
      expect(res).to equal true
    end

    it 'raises a RequestFailed error on failure' do
      stub_request(:post, /#{Regexp.quote(@post_url)}.*/).to_return(
        status: 500, body: '{"ok": false}', headers: {}
      )

      expect do
        @slack_client.invite(email: 'test@example.com', channels: ['test'])
      end.to raise_error(Slack::Client::RequestFailed)
    end
  end

  describe 'posting a message' do
    before(:all) do
      @post_url = URI.join(
        "https://#{@slack_client.domain}",
        Slack::POST_MESSAGE_PATH
      ).to_s
    end

    it 'returns true if all is well' do
      stub_request(:post, /#{@post_url}.*/).to_return(
        status: 200, body: '{"ok": true}', headers: {}
      )
      res = @slack_client.post_message_to(
        channel: 'test', with_text: 'hello world'
      )
      expect(res).to equal true

      stub_request(:post, /#{@post_url}.*/).to_return(
        status: 200, body: '{"ok": "true"}', headers: {}
      )
      res = @slack_client.post_message_to(
        channel: 'test', with_text: 'hello world'
      )
      expect(res).to equal true
    end

    it 'raises a PostMessageFailed if OK is not true' do
      stub_request(:post, /#{Regexp.quote(@post_url)}.*/).to_return(
        status: 200, body: '{"ok": "lolsorandom"}', headers: {}
      )

      expect do
        @slack_client.post_message_to(channel: 'test', with_text: 'hello world')
      end.to raise_error(Slack::Client::PostMessageFailed)
    end

    it 'raises a RequestFailed error on 500 HTTP codes' do
      stub_request(:post, /#{Regexp.quote(@post_url)}.*/).to_return(
        status: 500, body: '{"ok": false}', headers: {}
      )
      expect do
        @slack_client.post_message_to(channel: 'test', with_text: 'hello world')
      end.to raise_error(Slack::Client::RequestFailed)
    end
  end

  describe 'fetching users.list' do
    before(:all) do
      @fetch_url = URI.join(
        "https://#{@slack_client.domain}",
        Slack::USERS_LIST_PATH
      ).to_s
    end

    it 'returns true if all is well' do
      stub_request(:post, /#{Regexp.quote(@fetch_url)}.*/).to_return(
        status: 200, body: '{"ok": true}', headers: {}
      )

      expect(@slack_client.fetch_users_list['ok']).to equal true
    end

    it 'returns a user count of 1 with one slack member' do
      stub_request(:post, /#{Regexp.quote(@fetch_url)}.*/).to_return(
        status: 200,
        body: '{"ok":true,
               "members": [ { "profile": { "email": "test@example.com" } } ]
        }',
        headers: {}
      )

      expect(@slack_client.fetch_users_list['members'].count).to equal 1
    end
  end
end
