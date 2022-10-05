class UsersController < ApplicationController
  before_action :set_user, only: [:profile]

  def index
    @posts = Post.active
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit 
    @user = current_user
  end



  def set_user
  @user = User.find_by_username(params[:username])
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
    params.require(:user).permit(:email, :password, :password_confirmation, :username, :first_name, :last_name)
  end
end