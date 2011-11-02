source 'http://rubygems.org'

platforms :jruby do
  gem 'jruby-openssl', '~> 0.7'
end

gem 'ruby-openid', '2.1.8', :git => 'git://github.com/mbleigh/ruby-openid.git'

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
