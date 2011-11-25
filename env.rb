# encoding: utf-8

require 'sprockets'
require 'sequel'

set :sprockets, Sprockets::Environment.new

configure :development do
  Sequel.connect('sqlite://db/development.sqlite')

  Dir['models/*.rb'].each do |m|
    require m
  end

  use Rack::Reloader

  def app
    Sinatra::Application
  end

  settings.sprockets.append_path 'assets/stylesheets'
  settings.sprockets.append_path 'assets/javascripts'
end

configure :production do
  # Sequel.connect('sqlite://db/production.sqlite')

  # Dir['models/*.rb'].each do |m|
  #   require m
  # end

  settings.sprockets.append_path 'public/stylesheets'
  settings.sprockets.append_path 'public/javascripts'
end
