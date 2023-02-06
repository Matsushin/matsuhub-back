source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.3"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'nokogiri', '1.13.1'
gem 'rack-cors', require: 'rack/cors'
gem 'active_interaction'
gem 'rails-i18n'
gem 'carrierwave'
gem 'fog-aws'
gem 'devise'
gem 'devise_token_auth', '>= 1.2.0', git: "https://github.com/lynndylanhurley/devise_token_auth"
gem 'kaminari'
gem 'discard', '~> 1.2'
gem 'file_validators'
gem 'ransack'
gem 'active_model_serializers'
gem 'enumerize'
gem 'jp_prefecture'
gem 'devise-two-factor'
gem 'omniauth-twitter'
gem 'omniauth-rails_csrf_protection'
gem 'impressionist', git: 'https://github.com/charlotte-ruby/impressionist.git', ref: '46a582ff8cd3496da64f174b30b91f9d97e86643' # ref) https://autovice.jp/articles/108
gem 'rubyXL'
gem 'aws-sdk-rails'
gem 'fastimage'
gem "sentry-ruby"
gem "sentry-rails"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
  gem 'database_cleaner-active_record'
  gem 'dotenv-rails'
  gem 'faker'
  gem 'gimei'
  gem 'bullet'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry-byebug'
end

group :development do
  gem 'annotate'
  gem 'letter_opener_web'
end
