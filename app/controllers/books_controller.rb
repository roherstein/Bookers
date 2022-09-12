class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id),success:"作成に成功しました"
    else
      flash.now[:danger] = "作成に失敗しました"
      render :new
    end
  end
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    book.update(book_params)
    if @book.save
      redirect_to book_path(@book.id), success: "更新に成功しました"
    else
      flash.now[danger] = "更新に失敗しました"
      render :new
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to 'books/index'
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
