# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'messaging/version'


Gem::Specification.new do |s|
  s.name        = 'rails-messenger'
  s.version     =  Messaging::VERSION
  s.date        = '2015-10-28'
  s.summary     = "A light-weight messenging application for Rails 4.24!"
  s.description = "A light-weight messenging application for Rails 4.24!"
  s.authors     = ["Anthony Dell'Anno, Tim Hyson, Matt Paul, Stephen Lloyd"]
  s.email       = ['anthony@dellanno.co.uk, tjhyson@gmail.com, mattpaul001@gmail.com']
  s.files       = ["lib/messaging/messaging.rb"]
  s.homepage    = 'http://rubygems.org/gems/rails-messenger'
  s.license       = 'MIT'

  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib","lib/messaging","lib/messaging/generators", "lib/messaging/generators/messaging"]

  s.add_development_dependency "bundler", "~> 1.10.6"
  s.add_development_dependency "rake"

  s.add_dependency 'jbuilder'
  s.add_dependency 'rails_12factor'
end
