class CategoriesController < ApplicationController

  def index
    @category = Category.all
    render :index
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
      flash[:notice] = "Category successfully added!"
      redirect_to style_path(@style)
    else
      flash[:notice] = "error"
      render :new, status: :unprocessable_entity 
    end
  end

  def show
    @style = Style.find(params[:style_id])
    @category = Category.find(params[:id])
    render :show
  end

  def edit
    @style = Style.find(params[:style_id])
    @category = Category.find(params[:id])
    render :edit
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category successfully updated!"
      redirect_to style_path(@category.style)
    else
      @style = Style.find(params[:style_id])
      render :edit
    end
  end

  def destroy 
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Category successfully DESTROYED!!"
    redirect_to style_path(@category.style)
  end

  private 
    def category_params
      params.require(:category).permit(:name)
    end  
end