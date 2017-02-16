class CategoriesController < ApplicationController

  def index
      @categories = Category.paginate(page: params[:page], per_page: 2).order('id Desc').all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to action: 'index'
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to action: 'index'
  end

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
