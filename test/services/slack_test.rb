require 'test_helper'

class SlackServiceTest < ActiveSupport::TestCase
  RequestFailed = Class.new(StandardError)
  InviteFailed = Class.new(StandardError)
  PostMessageFailed = Class.new(StandardError)
  FetchUsersListFailed = Class.new(StandardError)

  def setup
    ENV['SLACK_TOKEN'] = 'test_token'
  end

  test 'raises if no API token is found' do
    ENV['SLACK_TOKEN'] = nil
    assert_nil ENV['SLACK_TOKEN']
    assert_raises(ArgumentError) { SlackService.new }

    ENV['SLACK_TOKEN'] = ''
    assert ENV['SLACK_TOKEN'].blank?
    assert_raises(ArgumentError) { SlackService.new }
  end

  test 'can invite a new user' do
    Net::HTTP.any_instance.expects(:request).returns(Net::HTTPSuccess)
    SlackService.new.invite(email: 'test@example.com', channels: ['test_channel'])
  end
end
