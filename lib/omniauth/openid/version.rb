# frozen_string_literal: true

module OmniAuth
  module OpenID
    # Version namespace for this gem.
    module Version
      # Current gem version.
      VERSION = "2.0.2"
    end
    # Current gem version exposed at the traditional constant location.
    VERSION = Version::VERSION # Traditional Constant Location
    include Version
  end
end
