# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'aws-sdk-s3', '~> 1.117', '>= 1.117.1'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'image_processing', '~> 1.12', '>= 1.12.2'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.4', '>= 1.4.3'
gem 'puma', '~> 5.0'
gem 'pundit', '~> 2.2'
gem 'rails', '~> 7.0.4'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# authentication
gem 'devise', '~> 4.8', '>= 4.8.1'

# Views
gem 'simple_form', '~> 5.1'

group :development, :test do
  gem 'awesome_print', '~> 1.9', '>= 1.9.2'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.23'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  gem 'rubocop', '~> 1.36'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 5.2'
  gem 'simplecov', '~> 0.21.2'
  gem 'vcr', '~> 6.1'
  gem 'webdrivers'
  gem 'webmock', '~> 3.18', '>= 3.18.1'
end
