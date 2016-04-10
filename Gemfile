source 'https://rubygems.org'
ruby '2.3.0'

#################
# Server and DB #
#################

gem 'rails', '4.2.2'
gem 'sprockets-rails', '~> 2.0'
gem 'pg'
gem 'sidekiq'
gem 'thin'
gem 'newrelic_rpm'

#############
# Front-end #
#############

gem 'sass-rails', '~> 4.0.3' #review node folders
gem 'bootstrap-sass'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'aws-sdk', '~> 1.35.0'
gem 'google-webfonts-rails' #adds Google WebFonts to Rails application
#cordova (phonegap), Meteor.com

########################
# Auth and Permissions #
########################

gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
gem 'devise', '3.4.1' #JDavis: devise is the Rails standard for authenticating users.
gem 'activeadmin', github: 'activeadmin'

########
# Misc #
########

gem 'shareable'
gem 'font-awesome-rails'
gem 'github-markup', '~> 1.2.1'
gem 'skylight'
gem 'figaro' #app configuration using ENV variables and a single YAML file
gem 'jekyll' #blogging gem
gem 'gibbon' #API wrapper for the Mailchimp API
gem 'google-analytics-rails', '1.1.0'

#####################
# Development Tools #
#####################

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'webmock'
end

group :development do
  gem 'quiet_assets'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'railroady'
  gem 'letter_opener'
  gem 'spring'
  gem 'annotate' #JDavis: this adds the table fields to the model file.  To use, run 'annotate --position after'
  gem 'xray-rails' #https://github.com/brentd/xray-rails
end

group :production do
  gem 'rails_12factor'
end
