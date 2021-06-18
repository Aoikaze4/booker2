class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @book = Book.where(user_id: current_user.id)
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:title, :email, :profile_image, :introduction)
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
