# OmniAuth::OpenID 

Provides strategies for authenticating to providers using the OpenID standard. 

## Installation

    gem install omniauth-openid

## Stand-Alone Example

Use the strategy as a middleware in your application:

    require 'omniauth-openid'
    require 'openid/store/filesystem'

    use Rack::Session::Cookie
    use OmniAuth::Strategies::OpenID, :store => OpenID::Store::Filesystem.new('/tmp')

Then simply direct users to `/auth/open_id` to prompt them for their OpenID identifier. You may also pre-set the identifier by passing an `identifier` parameter to the URL (Example: `/auth/open_id?openid_url=yahoo.com`).

A list of all OpenID stores is available at http://github.com/openid/ruby-openid/tree/master/lib/openid/store/

## OmniAuth Builder

If OpenID is one of several authentication strategies, use the OmniAuth Builder:

    require 'omniauth-openid'
    require 'openid/store/filesystem'

    use OmniAuth::Builder do
      provider :open_id, :store => OpenID::Store::Filesystem.new('/tmp')
    end

## Configured Identifiers

You may pre-configure an OpenID identifier.  For example, to use Google's main OpenID endpoint:

    use OmniAuth::Builder do
      provider :open_id, nil, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
    end

Note the use of nil, which will trigger ruby-openid's default Memory Store.

## License

Copyright (c) 2011 Michael Bleigh and Intridea, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
