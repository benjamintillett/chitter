require_relative '../chitter'

class PeepsController < Chitter

  post "/new" do 
    @peep = Peep.create(user: @user, message: params[:peep])
    flash.now[:notice] = ["Thankyou for Peeping!"]
    erb :"users/peeps"
  end

end