class BooksController < ApplicationController

  def new
  end

  def index
    @book = Book.new
    @books = Book.page(params[:page]) 
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to @book
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
