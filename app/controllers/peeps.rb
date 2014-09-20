require_relative '../chitter'

class PeepsController < Chitter

  post "/new" do 
    @peep = Peep.create(user: @user, message: params[:peep])
    flash[:notice] = ["Thankyou for Peeping!"]
    redirect "/users/#{@user.id}"
  end

end