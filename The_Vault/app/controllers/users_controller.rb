class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def show
  end

  def create
    user_params = params.require(:user).permit(:alias, :first_name, :last_name, :email, :password, :current_city_id)
    @user = User.create(user_params)

    redirect_to "/users"
  end

end
