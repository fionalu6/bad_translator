class TranslatorsController < ApplicationController
  before_action :find_translator, only: [:show, :update, :edit, :destroy]

  def index
    @translators = Translator.all
  end

  def show
  end

  def new
    @translator = Translator.new
  end

  def create
    @translator = Translator.new(translator_params)
    if @translator.save
      redirect_to translators_path, notice: "新增成功！"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @translator.update(translator_params)
      redirect_to translators_path, notice: "更新成功！"
    else
      render :edit
    end
  end

  def destroy
    @translator.destroy
    redirect_to translators_path, notice: "刪除成功！"
  end

  private
  def find_translator
    @translator = Translator.find_by(id: params[:id])
    redirect_to translators_path unless @translator
  end

  def translator_params
    params.require(:translator).permit(:name, :book_title, :isbn, :comment)
  end
end
