# encoding: utf-8

$: <<  File.expand_path('../../../', __FILE__)

# ENV['RACK_ENV'] = 'development'

require 'sinatra'

Sinatra::Application.set :environment, :development

require 'env'
# require 'haml'
# require 'sass'
require 'app'
require 'capybara/cucumber'

app = Rack::Builder.new do
  map '/assets' do
    run settings.sprockets
  end

  map '/' do
    run Sinatra::Application
  end
end

Capybara.register_driver :my_driver do |app|
  Capybara::Selenium::Driver.new(app, profile: 'selenium')
end

Capybara.configure do |config|
  config.javascript_driver = :my_driver
end

Capybara.app = app

Term::ANSIColor.coloring = true
