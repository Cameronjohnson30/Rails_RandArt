class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :random
  def is_admin?
    current_user && current_user.admin
  end

  def random(style)
    @styles = Style.all
    random_style = Style.all.sample
    random = random_style.name
    style_id = random_style.id
    @categories = Category.all
    category = Category.all.sample
    rano = category.name
    @ideas = Idea.all
    random_idea = Idea.all.sample
    random_id = random_idea.name
    return "Style:" + " " + random + ", "+ "Category:" + " " + rano + ", " + "Idea:" + random_id
  end

  protected
  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :firstname, :lastname, :email, :password])
    devise_parameter_sanitizer.permit(:update_user, keys: [:username, :firstname, :lastname, :email])
  end
end