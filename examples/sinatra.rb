require 'rubygems'
require 'bundler'

Bundler.setup :default, :development, :example
require 'sinatra'
require 'omniauth-openid'

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :open_id
end

get '/' do
  <<-HTML
  <ul>
    <li><a href='/auth/open_id'>Sign in with OpenID</a></li>
  </ul>
  HTML
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].info.to_hash.inspect
end
