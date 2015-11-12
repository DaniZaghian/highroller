class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user_params = params.require(:user).permit(:alias, :first_name, :last_name, :email, :password, :current_city_id)
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to "/users/#{@user.id}" # <-- go to show
  end

end
