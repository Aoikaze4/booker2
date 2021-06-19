class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.where(user_id: current_user.id)
  end

  def new
    @user = User.new
    @book = Book.new
  end

  def create
    @book = Book.new
  end

end
