class CategoriesController < ApplicationController
  
  def index 
    @categories = Category.all
    render :new
  end

  def new
    @style = Style.find(params[:style_id])
    @category = @style.categories.new
    render :new
  end

  def create 
    @style = Style.find(params[:style_id])
    @category = @style.categories.new(category_params)
    if @category.save
      redirect_to style_path(@style)
    else 
      render :new
    end
  end

  def edit
    @style = Style.find(patams[:style_id])
    @category = Category.find(params[:id])
    render :edit
  end

  def show
    @category = Category.find(params[:id])
    render :show
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update(category_parmas)
      redirect_to style_path(@category.style)
    else
      @style = Style.find(params[:style_id])
      render :edit
    end
  end

  def destroy 
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to style_path(@category.style)
  end

  private 
    def category_params
      params.require(:category).permit(:name)
  end
end

