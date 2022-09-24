class CategoriesController < ApplicationController
  
  def new
    @style = Style.find(params[:stlye_id])
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

  def update
    @category = Category.find(params[:id])
    if @category.update(category_parmas)
      redirect_to style_path(@category.style)
    else
      @style = Style.find(params[:style_id])
      render :edit
    end
  end

  private 
    def category_params
      params.require(:category.permit(:name))
  end
end

