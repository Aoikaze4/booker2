class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  private
  def user_params
    params.require(:user).permit(:title, :body, :profile_image)
  end
end
