require 'sinatra/base'

class User
end

class Chitter < Sinatra::Base
  get '/' do
  	erb :index
  end

  get "/users/new" do 
  	erb :"users/new"
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
