class IdeasController < ApplicationController

  def index
    @idea = Idea.all
    render :index
  end

  def new 
    @category = Category.find(params[:category_id])
    @idea = @category.ideas.new
    render :new
  end

  def create 
    @category = Category.find(params[:category_id])
    @idea = @category.ideas.new(idea_params)
    if @idea.save
      flash[:notice] = "Idea saved"
      render :show
    else
      render :new
    end
  end

  def show 
    @category = Category.find(params[:category_id])
    @idea = Idea.find(params[:id])
    render :show
  end

  def edit 
    @category = Category.find(params[:category_id])
    @idea = Idea.find(params[:id])
    render :edit
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
      flash[:notice] = "Idea Updated"
      redirect_to category_idea_path(@idea.category)
    else
      @category = Category.find(params[:category_id])
      render :edit
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    flash[:notice] = "Idea was deleted"
    render :index
  end

  private
    def idea_params
      params.require(:idea).permit(:name)
    end
end
