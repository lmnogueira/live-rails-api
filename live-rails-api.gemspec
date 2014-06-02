Gem::Specification.new do |s|
  s.name        = 'live-rails-api'
  s.version     = '0.0.1'
  s.date        = '2014-04-07'
  s.summary     = "Live Rails API"
  s.description = "This provides a rails client library to use the Liverail API."
  s.authors     = ["Lucas Nogueira"]
  s.email       = 'lucasnogueira@gmail.com'
  s.files       = ["lib/live-rails-api.rb","lib/api/live_rail.rb"]
  s.homepage    =
    'http://rubygems.org/gems/live-rails-api'
  s.license       = 'MIT'

  s.add_runtime_dependency 'rest-client', '~> 1.6', '>= 1.6.7'
  s.add_runtime_dependency 'json', '~> 1.7', '>= 1.7.7'
  s.add_runtime_dependency 'crack', '~> 0.4', '>= 0.4.2'
end
