source 'http://rubygems.org'

gem 'rake', '~> 13.0'

platforms :jruby do
  gem 'jruby-openssl', '~> 0.9'
end

gem 'ruby-openid', '2.1.8', :git => 'git://github.com/mbleigh/ruby-openid.git'

gemspec

group :development, :test do
  gem 'rack-test'
  gem 'rspec', '>= 3.0'
  gem 'simplecov', '>= 0.9'
  gem 'webmock', '~> 3.0'
  gem 'yard', '>= 0.9.11'
end

group :example do
  gem 'sinatra'
end
