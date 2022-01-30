# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'pg', '~> 1.1'

gem 'rails', '~> 7.0.1'

gem 'puma', '~> 5.0'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

gem 'devise_token_auth', path: 'vendor/devise_token_auth'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'rubocop', '~> 1.25'
end

gem 'rack-cors', '~> 1.1'
