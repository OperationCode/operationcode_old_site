require 'test_helper'

class SlackUrlTest < ActiveSupport::TestCase
  test "returns osx url when given 'mac'" do
    url = SlackUrl.get_url(:mac)
    assert_equal url, "https://slack.com/ssb/download-osx"
  end

  test "returns win url when given 'windows'" do
    url = SlackUrl.get_url(:windows)
    assert_equal url, "https://slack.com/ssb/download-win"
  end

  test "returns ubuntu url when given 'ubuntu'" do
    url = SlackUrl.get_url(:ubuntu)
    assert_equal url, "https://downloads.slack-edge.com/linux_releases/slack-desktop-2.4.2-amd64.deb"
  end

  test "returns fedora url when given 'fedora'" do
    url = SlackUrl.get_url(:fedora)
    assert_equal url, "https://downloads.slack-edge.com/linux_releases/slack-2.5.1-0.1.fc21.x86_64.rpm"
  end

  test "returns nil when given unrecognized key" do
    url = SlackUrl.get_url(:anything_else)
    assert_equal url, nil
  end
end
