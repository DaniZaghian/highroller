class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  # def create
  #   user_params = params.require(:user).permit(:alias, :first_name, :last_name, :email, :password, :profile_pic_url)
  #   @user = User.create(user_params)
  #   login(@user) # <-- login the user
  #   redirect_to "/users/#{@user.id}" # <-- go to show
  # end

  def create 
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else 
      flash[:error] = user.errors.full_messages
      redirect_to root_path
    end
  end


  def edit
  	@user = User.find(params[:id])
  end

  def update
  	user_id = params[:id]
  	user = User.find(user_id)
  	updated_attributes = params.require(:user).permit(:first_name, :last_name, :email, :password, :profile_pic_url)
  	user.update_attributes(updated_attributes)
  	redirect_to user
  end

private
def user_params
  params.require(:user).permit(:alias, :first_name, :last_name, :email, :password, :profile_pic_url)
end



end
