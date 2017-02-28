class SlackUrl
  def self.get_url(os)
    options = Hash.new('slack unsupported os')
    download_options = {
      'Mac' => 'https://slack.com/ssb/download-osx',
      'Windows' => 'https://slack.com/ssb/download-win',
      'Linux' => 'https://downloads.slack-edge.com/linux_releases/slack-desktop-2.4.2-amd64.deb'
    }
    options.merge!(download_options)
    options[os]
  end
end
