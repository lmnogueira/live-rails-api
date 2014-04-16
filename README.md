# Liverail API

## Purpose

This provides a gem client library to use the Liverail API. 

[Liverail]: http://liverail.com/ 

Created by Lucas Nogueira.

## Installation

edit your Gemfile
gem 'live-rails-api', :git => 'git://github.com/lmnogueira/live-rails-api.git'

install gem
bundle install

update gem

bundle update live-rails-api

## Demo

manual authentication
```ruby
require('live-rails-api');
response = LiveRailsApi.instance.login "username","password"
response = LiveRailsApi.instance.partner_list
```

ENV authentication (automatic login)
```
export LIVE_RAIL_USERNAME=username@test.com
export LIVE_RAIL_PASSWORD=myaccountpassword
```
```ruby
require('live-rails-api');
response = LiveRailsApi.instance.partner_list
```

## API

### All endpoints exposed by http://test.api.liverail.com/
Replace the route / with _ to get your method name.
like: "/partner/add" => LiveRailsApi.instance.partner_add
Args need to be a HASH like LiveRailsApi.instance.partner_list name:"my_partner_name"
