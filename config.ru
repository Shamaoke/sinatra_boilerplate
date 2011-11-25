#\ -p 1234
# encoding: utf-8

$: <<  File.expand_path('../', __FILE__)

require 'sinatra'
# require 'haml'
# require 'sass'
require 'env'
require 'app'

map '/assets' do
  run settings.sprockets
end

map '/' do
  run Sinatra::Application
end
