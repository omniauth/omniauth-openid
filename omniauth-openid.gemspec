# encoding: utf-8
require File.expand_path('../lib/omniauth-openid/version', __FILE__)

Gem::Specification.new do |gem|

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'rack-openid', '~> 1.3.1'
  gem.add_development_dependency 'rack-test', '~> 0.5'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rdiscount', '~> 1.6'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'simplecov', '~> 0.4'
  gem.add_development_dependency 'webmock', '~> 1.7'
  gem.add_development_dependency 'yard', '~> 0.7'

  gem.authors = ['Michael Bleigh', 'Erik Michaels-Ober']
  gem.description = %q{OpenID strategy for OmniAuth.}
  gem.email = ['michael@intridea.com', 'sferik@gmail.com']
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'https://github.com/intridea/omniauth-openid'
  gem.name = 'omniauth-openid'
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
  gem.summary = gem.description
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = OmniAuth::OpenID::VERSION
end
