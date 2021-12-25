# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

#
# Core
#
gem 'bootsnap', '>= 1.4.4', require: false
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'

#
# DB, ORM, Model
#
gem 'mysql2', '~> 0.5'
gem 'seedbank'

#
# API
#
gem 'active_model_serializers', '~> 0.10.0'

#
# Others
#
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debase'
  gem 'factory_bot_rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 4.1.0'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'ruby-debug-ide'
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'committee-rails'
  gem 'rspec-request_describer'
end
