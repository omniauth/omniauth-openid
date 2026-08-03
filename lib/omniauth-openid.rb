# external gems
require "version_gem"
require "rexml"

# this library's version

# Configure version before loading the rest of the library

# This library
require "omniauth/strategies/open_id"
require_relative "omniauth/openid/version"

OmniAuth::OpenID::Version.class_eval do
  extend VersionGem::Basic
end
