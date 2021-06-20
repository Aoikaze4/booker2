class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(current_user.id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def show
    @book_detail = Book.find(params[:id])
    @user = User.find_by(id: @book_detail.user_id)
    @book = Book.new
    @book.user_id = current_user.id
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id), notice: 'You have updated book successfully.'
    end
  end

  def create
    @user = User.find(current_user.id)
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id), notice: 'You have created book successfully.'
    else
      @books = Book.all
      @user = User.find(current_user.id)
      render :index
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end
end
