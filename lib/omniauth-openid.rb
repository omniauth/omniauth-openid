# external gems
require "version_gem"
require "rexml"
require_relative "omniauth/openid/version"

# this library's version

# Configure version before loading the rest of the library
OmniAuth::OpenID::Version.class_eval do
  extend VersionGem::Basic
end

# This library
require "omniauth/strategies/open_id"
