class LikesController < ActionController

  def save_like
  @like = linke.new(post_id: params[:post_id], user_id:, current_user.id)
  @post_id = params[:post_id]
    existing_like = Like.where(post_id: params[:post_id], user_id: current_user.id)
  reapond_to do |format|
      format.js {
        if existing_like.any?
          existing_like.first.destroy
          @success = false
        elsif @like.save
        @success: true 
        render "posts/like"
      else 
        @success: false 
      end
      render "posts/like"
      }
    end
  end
end