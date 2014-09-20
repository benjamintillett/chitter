require 'rubygems'
<<<<<<< HEAD
require 'sinatra'

require_relative './app/chitter'
=======
require File.join(File.dirname(__FILE__), 'app/chitter.rb')
>>>>>>> 4b47c1dce480845c7680aba56f0e86b7bf2a5de2

run Chitter