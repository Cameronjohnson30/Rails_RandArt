class ApplicationController < ActionController::Base
  before_action :configure_permitted_params, if: :devise_controller?
  helper_method :random

  def is_admin?
    current_user && current_user.admin
  end


  def random(style)
    random_style = Style.all.sample
    random = random_style.name
    style_id = random_style.id
    random_category = Category.where(style_id: style_id).sample
    rano = random_category.name
    category_id = random_category.id
    random_idea = Idea.where(category_id: category_id).sample
    random_id = random_idea.name
    return "Style:" + " " + random + ", "+ "Category:" + " " + rano + ", " + "Idea: " + random_id
  end
protected
  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, :password])
    devise_parameter_sanitizer.permit(:update_user, keys: [:username, :first_name, :last_name, :email])
  end
end