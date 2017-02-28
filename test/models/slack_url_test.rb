require 'test_helper'

class SlackUrlTest < ActiveSupport::TestCase
  test "returns osx url when given 'Mac'" do
    url = SlackUrl.get_url('Mac')
    assert_equal url, "https://slack.com/ssb/download-osx"
  end

  test "returns win url when given 'Windows'" do
    url = SlackUrl.get_url('Windows')
    assert_equal url, "https://slack.com/ssb/download-win"
  end

  test "returns osx url when given 'Linux'" do
    url = SlackUrl.get_url('Linux')
    assert_equal url, "https://downloads.slack-edge.com/linux_releases/slack-desktop-2.4.2-amd64.deb"
  end

  test "returns default when given unrecognized key" do
    url = SlackUrl.get_url('blah')
    assert_equal url, "slack unsupported os"
  end
end
