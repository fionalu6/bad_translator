class BooksController < ApplicationController
  before_action :find_book, only: [:show, :update, :edit, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = @translator.books.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: "新增成功！"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: "更新成功！"
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice: "刪除成功！"
  end

  private
  def find_book
    @book = Book.find_by(isbn: params[:isbn])
    redirect_to books_path unless @book
  end

  def book_params
    params.require(:book).permit(:name, :title, :isbn, :comment)
  end
end
