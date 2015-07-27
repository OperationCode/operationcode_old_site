# See "Extra: Automation" section at http://www.sitepoint.com/jekyll-rails/
# Also at https://github.com/JesseHerrick/jekyll-on-rails
# Run with `rake jekyll`

namespace :jekyll do
  dest = Rails.root.join('public/blog')

  options = {
    'baseurl' => '/blog',
    'config' => Rails.root.join('config', 'jekyll.yml').to_s,
    # commented out because we are not launching the Jekyll server
    # 'watch' => true,
    # 'port' => 3000,
    'source' => Rails.root.join('blog').to_s,
    'destination' => dest.to_s
  }

  build = Thread.new { Jekyll::Commands::Build.process(options) }
  # commented out because we are not launching the Jekyll server
  # serve = Thread.new { Jekyll::Commands::Serve.process(options) }

  # modified original tutorial code - removed [serve] from array below to prevent Jekyll server from initailizing
  commands = [build]
  commands.each { |c| c.join }
end
