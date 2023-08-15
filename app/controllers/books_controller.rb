class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  def index
    @book = Book.new
    @books= Book.all
    # redirect_to '/show'

  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    # flash[:notice] = "Book was successfully destroyed."
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  # def destroy
  #   book = Book.find(params[:id])
  #   book.destroy
  #   redirect_to '/books'
  #   # redirect_to '/index'
  # end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
