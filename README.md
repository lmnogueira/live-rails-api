# Liverail API

## Purpose

This provides a gem client library to use the Liverail API.

[Liverail]: http://liverail.com/

Created by Lucas Nogueira.

## Installation

edit your Gemfile
```ruby
gem 'liverails_api', '~> 0.0.3'
```
install gem
```ruby
bundle install
```

update gem
```ruby
bundle update live-rails-api
```

## Demo

manual authentication
```ruby
require('liverails_api');
response = LiverailsApi.instance.login "username","password"
response = LiverailsApi.instance.partner_list
```

ENV authentication (automatic login)
```
export LIVE_RAIL_USERNAME=username@test.com
export LIVE_RAIL_PASSWORD=myaccountpassword
```
```ruby
require('liverails_api');
response = LiverailsApi.instance.partner_list
```

## API

### All endpoints exposed by http://test.api.liverail.com/
Replace the route / with _ to get your method name.
like: "/partner/add" => LiverailsApi.instance.partner_add
Args need to be a HASH like LiverailsApi.instance.partner_list { name:"my_partner_name" }
