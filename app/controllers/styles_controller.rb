class StylesController < ApplicationController

  def index
    @styles = Style.all
    render :index
  end

  def new
    @style = Style.new
    render :new
  end

  def create
    @style = Style.new(style_params)
    if @style.save 
      redirect_to styles_path 
    else
      render :new, status: :unprocessable_entity 
    end 
  end

  def edit
    @style = Style.find(params[:id])
    render :edit
  end

  def show
    @style = Style.find(params[:id])
    render :show
  end

  def update
    @style = Style.find(params[:id])
    if @style.update(style_params)
      redirect_to styles_path 
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @style = Style.find(params[:id])
    @style.destroy
    redirect_to styles_path
  end

  private 
    def style_params
      params.require(:style).permit(:name, :id)
    end  
end