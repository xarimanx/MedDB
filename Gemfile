source 'https://rubygems.org'

gem 'rails', '3.2.8'

group :development do
  gem 'thin'
end

gem "capistrano"
gem "capistrano-ext"
gem 'rvm-capistrano'

gem "haml"

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'

group :development do
  gem "hpricot"
  gem "ruby_parser"
  gem "rails-erd"
  gem "debugger"
end

group :staging do
  gem "passenger"
  gem "whenever", :require => false
end

gem 'devise'
gem 'devise-encryptable'
gem 'exception_notification_rails3', :require => 'exception_notifier'

gem 'execjs'

gem 'rspec'

group :test do
  gem "timecop"
  gem "ci_reporter"
  gem 'rspec-rails'
  gem 'rspec_tag_matchers'
  gem 'remarkable_activerecord'
  gem 'rr'
  gem 'autotest'
  gem 'pickle'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'shoulda-matchers'
  gem 'email_spec'
end

group :test, :development do
  gem "factory_girl_rails"
  gem "factory_girl_generator"
  gem 'ffaker'
end

group :development, :production do
  gem 'mysql2', '>= 0.3'
end
