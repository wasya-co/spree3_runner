
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.8', '>= 5.2.8.1'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password
gem 'bootsnap', '>= 1.1.0', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'aws-sdk-s3'
gem 'psych', '~> 3.0'

gem 'spree', '3.7.17', github: 'wasya-co/spree', branch: '3.7.17'
gem 'spree_auth_devise', github: 'wasya-co/spree_auth_devise', branch: '3.5.2'
gem 'spree_gateway', github: 'wasya-co/spree_gateway', branch: 'master' # 3.4 ? 3.9.4 ?

## Not used after spree 3.1 ?
gem 'spree_i18n', github: 'wasya-co/spree_i18n', branch: '3.7.15'
gem 'spree_globalize', github: 'wasya-co/spree_globalize', branch: '3.7.15'

group :development do
  gem 'byebug'

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem "capistrano-rails"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end
