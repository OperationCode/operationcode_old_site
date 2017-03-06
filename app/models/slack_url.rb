class SlackUrl
  def self.get_url(os)
    download_options = {
      :mac     => 'https://slack.com/ssb/download-osx',
      :windows => 'https://slack.com/ssb/download-win',
      :ubuntu  => 'https://downloads.slack-edge.com/linux_releases/slack-desktop-2.4.2-amd64.deb',
      :fedora  => 'https://downloads.slack-edge.com/linux_releases/slack-2.5.1-0.1.fc21.x86_64.rpm'
    }
    download_options[os]
  end
end
