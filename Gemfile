# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.3', '>= 7.0.3.1'

gem 'bootsnap', require: false
gem 'bootstrap', '~> 5.2.0'
gem "bcrypt", "~> 3.1.7"
gem 'dartsass-rails'
gem "image_processing", "~> 1.2"
gem 'importmap-rails'
gem 'money-rails', '~>1.12'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'sqlite3'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'guard-rspec'
  gem 'pry-byebug'
  gem 'rspec-rails'
end

group :development do
  gem 'brakeman'
  gem 'bullet'
  gem 'bundler-audit'
  gem 'fasterer'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'reek'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'scss_lint'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem "rack_session_access"
  gem 'webdrivers'
end
