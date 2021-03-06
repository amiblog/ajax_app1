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

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    @books=Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
