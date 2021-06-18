class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end
end
