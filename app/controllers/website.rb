require_relative '../chitter'

class WebsiteController < Chitter

  get '/' do
  	if session[:user]
  		erb :index  
  	else	
  		redirect "/users/sign_in"
  	end
  end

end 