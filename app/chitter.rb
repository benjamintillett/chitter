require 'sinatra/base'
require 'data_mapper'
require 'rack-flash'

env = ENV["RACK_ENV"] || "development"

require_relative './models/user'
require_relative './models/peep'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{env}")




DataMapper.finalize

DataMapper.auto_upgrade!


class Chitter < Sinatra::Base
  
  use Rack::Flash
  enable :sessions
  enable :show_exceptions
  set :session_secret, 'super secret'	

  before do 
  	@user = User.get(session[:user])
    @all_peeps = Peep.all
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
