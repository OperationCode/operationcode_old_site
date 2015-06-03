source 'https://rubygems.org'
# ruby '2.2.2'

#################
# Server and DB #
#################

gem 'rails', '4.2.0'
gem 'sprockets-rails', '~> 2.0'
gem 'pg'
gem 'sidekiq'

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

gem 'stripe'
gem 'devise', '3.4.1' #JDavis: devise is the Rails standard for authenticating users.
gem 'activeadmin', github: 'activeadmin'

########
# Misc #
########

gem 'shareable'
gem 'font-awesome-rails'
gem 'github-markup', '~> 1.2.1'
gem 'annotate', '2.5.0' #JDavis: this adds the table fields to the model file.  To use, run 'annotate --position before'
gem 'skylight'

#####################
# Development Tools #
#####################

group :development do
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'railroady'
  gem 'letter_opener'
  gem 'spring'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
end

group :production do
  gem 'rails_12factor'
  gem 'thin'
end
