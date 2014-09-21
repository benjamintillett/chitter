require_relative '../chitter'

class UsersController < Chitter

  get "/new" do 
  	erb :"users/new"
  end

  post "/new" do 
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
  
  get "/:id" do 
  	erb :"users/show"
  end
 end