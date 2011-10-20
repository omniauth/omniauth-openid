require File.expand_path('../lib/omniauth/version', __FILE__)

source 'http://rubygems.org'

platforms :jruby do
  gem 'jruby-openssl', '~> 0.7'
end

gemspec

group :development, :test do
  gem 'guard'
  gem 'guard-rspec'
  gem 'growl'
  gem 'rb-fsevent'
end

group :example do
  gem 'sinatra'
end
