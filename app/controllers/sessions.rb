require_relative '../chitter'

class SessionsController < Chitter

  post "/new" do 
  	@user = User.authenticate(params[:user_email],params[:user_password])
  	if @user
  		session[:user] = @user.id 
  	else 
  		flash[:errors] = ["You entered an invalid username/password"]
      redirect "/users/sign_in"  
  	end
  	erb :index
  end

  post "/" do 
  	session[:user] = nil
  	@user = nil
  	redirect "/users/sign_in"
  end

end