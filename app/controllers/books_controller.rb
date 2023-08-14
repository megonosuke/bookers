class BooksController < ApplicationController

  def create
    # book = Book.new(book_params)
    # book.save
    # redirect_to '/top'
  end
  
  def index
    # @book = Book.index
  end

  def show
  end

  def edit
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    # 
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
