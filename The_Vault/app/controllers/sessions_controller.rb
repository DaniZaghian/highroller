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
      flash[:error] = "Error, cannot find user"
      redirect_to "/login"
    end
  end
  #logouts the current user
  def destroy
    session[:user_id] = nil
    flash[:success] = "Successfully, logged out"
    redirect_to login_path
  end

end
