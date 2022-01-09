source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# PgSearch builds named scopes that take advantage of PostgreSQL's full text search.
gem 'pg_search'
# Use Puma as the app server
gem 'puma', '~> 5.5.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 4.2.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5'
# See https://github.com/rails/execjs#readme for more supported runtimes
# Turbo bundles several techniques for creating fast, modern, progressively enhanced web applications without using much JavaScript. https://github.com/hotwired/turbo-rails
gem 'turbo-rails'
# Hotwire is an alternative approach to building modern web applications without using much JavaScript by sending HTML instead of JSON over the wire https://github.com/hotwired/hotwire-rails
gem 'hotwire-rails'
# Use ESM with importmap to manage modern JavaScript in Rails without transpiling or bundling. https://github.com/rails/importmap-rails
gem "importmap-rails", "~> 0.9.2"
# Bundle and process CSS in Rails with Tailwind, PostCSS, and Sass via Node.js. https://github.com/rails/cssbundling-rails
gem 'cssbundling-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.9', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'awesome_print'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# https://github.com/julianfssen/coingecko_ruby
gem 'coingecko_ruby'
gem 'money'
