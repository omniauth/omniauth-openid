$:.unshift File.dirname(__FILE__) + '/../lib'

require 'simplecov'
SimpleCov.start
require 'rspec'
require 'rack/test'
require 'webmock/rspec'
require 'omniauth-openid'

RSpec.configure do |config|
  config.include WebMock::API
  config.include Rack::Test::Methods
end

if OmniAuth.config.respond_to?(:request_validation_phase)
  OmniAuth.config.request_validation_phase = ->(env) {}
end
