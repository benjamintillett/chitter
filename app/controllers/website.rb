require_relative '../chitter'

class WebsiteController < Chitter

  get '/' do
  	erb :index
  end

end 