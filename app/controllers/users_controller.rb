class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(usre_params)
    redirect_to user_path(@user)
  end

  private
  def usre_params
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end
end
