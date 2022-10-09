class UsersController < ApplicationController
  before_action :set_user, only: [:profile]
  before_action :set_user, only: [:show]
  
  def index
    @posts = Post.active
    @comment = Comment.new
  end

  def profile 
    @user = User.find_by_username(params[:username])
  end

  def edit 
    @user = current_user
  end

  def set_user
    @user = User.find_by_username(params[:username])
    render :index
  end

  def follow_user
    follower_id = params[:follow_id]
      if Follower.create(follower: current_user.id, following_id: user_id)
        flash[:success] = "now following User"
        redirect_to follow_user_path
      else
        flash[:error] = "Unable to follow"
      end
    redirect_to root_path
  end

  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to current_user, notice: "You successfully updated your profile." }
      else
        format.html { render :edit, notice: "error" }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Idea was deleted"
    render :index
  end
end

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    user_params.permit(:username, :email)
  end
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end