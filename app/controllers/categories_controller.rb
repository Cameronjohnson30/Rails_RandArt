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

  private 
    def category_params
      params.require(:category.permit(:name))
  end
end

