require 'rubygems'
require 'sinatra/base'

require './app/chitter'
Dir.glob('./app/{models,helpers,controllers}/*.rb').each { |file| require file }

map('/users') { run UsersController }
map('/sessions') { run SessionsController }
map('/peeps') { run PeepsController }
map('/') { run WebsiteController }