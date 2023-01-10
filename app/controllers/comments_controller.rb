class CommentsController < ApplicationController

def create
  @comment = Comment.new(comment_params)
  @comment.user_id = current_user.id if user_signed_in?
  if @comment.save
    redirect_to posts_path
    flash[:notice] = "comment successfully added!"
  else
    redirect_to posts_path
    flash[:notice] = "error"
  end
end

def destroy
  @comment = Comment.find_by(params[:comment_id])
  @comment.destroy
  flash[:notice] = "comment successfully deleted"
  redirect_to posts_path
end
  private 
  def comment_params
  params.require(:comment).permit(:comment, :post_id)
  end

end