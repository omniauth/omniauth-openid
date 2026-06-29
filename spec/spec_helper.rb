# Std Libs
require "securerandom"

# Bugfixes
# JRuby needed an explicit "require 'logger'" for Rails < 7.1
# See: https://github.com/rails/rails/issues/54260#issuecomment-2594650047
# Placing above omniauth because it is a dependency of omniauth,
#   which is undeclared in older versions.
require "logger"

# External library dependencies
require "rack/test"
require "rack/session"
require "rack/openid"
require "webmock/rspec"
require "version_gem/ruby"

require "omniauth"
require "omniauth/version"

# RSpec Configs
require "config/omniauth"
require "config/rspec/rack_test"
require "config/rspec/rspec_block_is_expected"
require "config/rspec/rspec_core"
require "config/rspec/version_gem"

# RSpec Support
spec_root_matcher = %r{#{__dir__}/(.+)\.rb\Z}
Dir.glob(Pathname.new(__dir__).join("support/**/", "*.rb")).each { |f| require f.match(spec_root_matcher)[1] }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.include WebMock::API
  config.include Rack::Test::Methods
end

if OmniAuth.config.respond_to?(:request_validation_phase)
  OmniAuth.config.request_validation_phase = ->(env) {}
end

# The last thing before loading this gem is to set up code coverage
begin
  require "kettle-soup-cover"
  if Kettle::Soup::Cover::DO_COV
    # Requiring simplecov loads the project-local `.simplecov`.
    require "simplecov"
    require "kettle/soup/cover/config"
    SimpleCov.start
  end
  #   this next line has a side effect of running `.simplecov`
rescue LoadError => error
  # check the error message and conditionally re-raise
  raise error unless error.message.include?("kettle")
end

# External RSpec & related config
require "kettle/test/rspec"

# This gem
require "omniauth-openid"
