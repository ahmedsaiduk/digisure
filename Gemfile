# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap-sass', '~> 3.4.0'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.6'
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails'
  gem 'ffaker', '~> 2.10'
  gem 'pry'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'shoulda-matchers', '~> 4.0'
end

group :development do
  gem 'annotate'
  gem 'erb2haml'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', '~> 0.64.0', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'rspec', '~> 3.8'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
