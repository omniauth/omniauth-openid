# frozen_string_literal: true

require "version_gem"
require_relative "openid/version"

module OmniAuth
  module OpenID
  end
end

OmniAuth::OpenID::Version.class_eval do
  extend VersionGem::Basic
end
