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
  end

  get '/' do
  	erb :index
  end

  get "/users/new" do 
  	erb :"users/new"
  end

  post "/users" do 
  	@user = User.new(
  		email: params[:email],
  		password: params[:password],
  		password_confirmation: params[:password_confirmation],
  		username: params[:username],
  		name: params[:name],
      avatar_url: params["avatar_url"]
  		)
  	if @user.save
      flash.now[:notice] = ["Hello #{@user.email}! thankyou for joining chitter"]
      session[:user] = @user.id
  		erb :index
  	else
  		flash.now[:errors] = @user.errors.full_messages
  		@user = nil
  		erb :"users/new"
  	end
  end

  post "/sessions/new" do 
  	@user = User.authenticate(params[:user_email],params[:user_password])
  	if @user
  		session[:user] = @user.id 
  	else 
  		flash.now[:errors] = ["You entered an invalid username/password"]
  	end
  	erb :index
  end

  post "/sessions" do 
  	session[:user] = nil
  	@user = nil
  	erb :index
  end

  post "/peeps/new" do 
    @peep = Peep.create(user: @user, message: params[:peep])
    flash.now[:notice] = ["Thankyou for Peeping!"]
    erb :"users/peeps"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
