require_relative '../chitter'

class SessionsController < Chitter

  post "/new" do 
  	@user = User.authenticate(params[:user_email],params[:user_password])
  	if @user
  		session[:user] = @user.id 
  	else 
  		flash.now[:errors] = ["You entered an invalid username/password"]
  	end
  	erb :index
  end

  post "/" do 
  	session[:user] = nil
  	@user = nil
  	erb :index
  end

end