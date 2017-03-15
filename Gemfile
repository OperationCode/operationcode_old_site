source 'https://rubygems.org'
ruby '2.3.3'

#################
# Server and DB #
#################

gem 'logstash-event'
gem 'newrelic_rpm'
gem 'pg'
gem 'puma'
gem 'rails', '4.2.5.2'
gem 'sentry-raven'
gem 'sidekiq'
gem 'sprockets-rails', '~> 2.0'

#############
# Front-end #
#############

gem 'aws-sdk', '~> 1.35.0'
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.0.0'
gem 'google-webfonts-rails' # adds Google WebFonts to Rails application
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'leaflet-rails'
gem 'sass-rails', '~> 4.0.3' # review node folders
gem 'split', require: 'split/dashboard' # adds A/B testing capability
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

########################
# Auth and Permissions #
########################

gem 'activeadmin', '~> 1.0.0.pre4'
gem 'devise'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

########
# Misc #
########

gem 'carmen'
gem 'exception_notification'
gem 'figaro' # app configuration using ENV variables and a single YAML file
gem 'geocoder'
gem 'gibbon' # API wrapper for the Mailchimp API
gem 'github-markup', '~> 1.2.1'
gem 'google-analytics-rails', '1.1.0'
gem 'lograge'
gem 'shareable'
gem 'slack-notifier'

#####################
# Development Tools #
#####################

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter'
  gem 'minitest-rails'
  gem 'mocha'
  gem 'webmock'
end

group :development do
  gem 'annotate' # JDavis: this adds the table fields to the model file.  To use, run 'annotate --position after'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard'
  gem 'guard-minitest'
  gem 'letter_opener'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'railroady'
  gem 'spring'
  gem 'xray-rails' # https://github.com/brentd/xray-rails
end

group :production do
  gem 'rails_12factor'
end
