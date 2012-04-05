source 'http://rubygems.org'

# ruby, 'ruby-1.9.2-p180'
gem 'rails', '~> 3.2.3'
gem 'pg'
gem 'newrelic_rpm'

# 
# group :development, :test do
#   gem 'sqlite3'
# end
# 
# group :production do
#   gem 'pg'
# end
	
group :test do
	gem 'rspec-rails'
	gem 'webrat'
	gem 'spork'
	gem 'autotest'
	gem 'autotest-rails-pure'
end

if  RUBY_PLATFORM =~ /darwin/
	gem 'autotest-fsevent'
	gem 'autotest-growl'
end



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'# ,  "  ~> 3.2.3"
  gem 'coffee-rails'# , "~> 3.2.2"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

