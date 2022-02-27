class BooksController < ApplicationController
  def index
    @books=Book.all
    @book=Book.new
  end

  def create
    @book=Book.new(book_params)
    @book.save
    @books=Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end