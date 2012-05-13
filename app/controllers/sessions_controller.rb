class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_name(params[:session][:name])
    if user
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Unknown user'
      redirect_to users_path
    end 
  end

  def destroy
    sign_out
    redirect_to users_path
  end

end
