# encoding: utf-8

$: << File.expand_path('../../', __FILE__)

# ENV['RACK_ENV'] = 'test'

require 'sinatra'

# Sinatra::Application.set :environment, :test

require 'rspec'
require 'rack/test'
require 'capybara/rspec'
require 'env'
require 'app'

RSpec.configure do |config|
  config.include(Rack::Test::Methods)
  config.include(Capybara::RSpecMatchers)
  config.tty = true
  config.color_enabled = true
  config.formatter = :documentation
end
