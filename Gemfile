source 'http://rubygems.org'

gem 'rake', '~> 0.9.2.2' # Temporarily trying to fix bundler errors
gem 'rails', '~> 3.1.0'
gem 'pg' # postgres
gem 'rack'
gem 'annotate' # Annotate gem for schema comments
gem 'jquery-rails'
gem 'haml-rails'
gem 'sass'
gem 'bcrypt-ruby', '2.1.4', :require => 'bcrypt' # encryption
# gem 'silent-postgres'
# gem 'redis-store', '~> 1.0.0'
gem 'newrelic_rpm' # Newrelic

group 'assets' do
  gem 'sass-rails', "3.1.5"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :development do
  gem 'active_reload'
  gem 'heroku'
end

group :test do
  gem 'factory_girl'
end

group :test, :development do
  gem 'rspec-rails'
end

group :production do
  gem 'thin'
end
