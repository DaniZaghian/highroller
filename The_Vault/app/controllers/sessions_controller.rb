class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:alias, :password)
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to "/users/#{@user.id}"
    else
      redirect_to "/login"
    end
  end
  #logouts the current user
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
