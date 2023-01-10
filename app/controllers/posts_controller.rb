class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def index
    @user = User.find_by(params[:user_id])
    @post = Post.all 
    render :index
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id if user_signed_in?
    if @post.save
      render :show
      flash[:notice] = "Post successfully added!"
    else
      redirect_to new_post_path
      flash[:notice] = "error"
    end
  end

  def show
    @user = User.find_by(params[:user_id])
    @post = Post.find(params[:id])
    render :show
  end

  def update
    @user = User.find_by(params[:user_id])
    @post = Post.find_by(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post Updated"
      render :edit
    else
      @post = Post.find(params[:id])
      render :edit
    end
  end

  def destroy
    @post = Post.find_by(params[:post_id])
    @post.destroy
    flash[:notice] = "Post was deleted"
    redirect_to posts_path
  end

  private 
  def post_params
  params.require(:post).permit(:image, :description)
  end

end