require 'sinatra/base'
require 'data_mapper'

env = ENV["RACK_ENV"] || "development"

require_relative './models/user'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")



DataMapper.finalize

DataMapper.auto_upgrade!


class Chitter < Sinatra::Base
  
  enable :sessions
  set :session_secret, 'super secret'	

  before do 
  	@user = User.get(session[:user])
  end

  get '/' do
  	erb :index
  end

  get "/users/new" do 
  	erb :"users/new"
  end

  post "/users" do 
  	@user = User.create(
  		email: params[:email],
  		password: params[:password]
  		)
  	erb :"users/index"
  end

  post "/sessions/new" do 
  	@user = User.first(email: params[:user_email])
  	# User.first(email: params[:email])
  	
  	session[:user] = @user.id if @user
  	erb :index
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
