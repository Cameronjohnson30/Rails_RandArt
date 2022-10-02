class PostsController < ApplicationController

  def show
    Apost = Post.new
  end

  def create
    @post = Post.new(post_params)
  end
  private post_params
  params.reequire(:post).permit(:image)
end
end