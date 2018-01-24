class SessionController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # session[:username] = user.id
      redirect_to '/' #change that to a user's details page
    else
      #add flash in future with error?
    render 'new'
    end
  end
end


