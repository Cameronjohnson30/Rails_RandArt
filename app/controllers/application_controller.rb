class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :random
  helper_method :rando
  def is_admin?
    current_user && current_user.admin
  end
def rando(category)
  # random_style = Style.all.sample
  # :style_id == random_style.id
  # style = Style.find(params[:style_id])
  # @category = Category.all.sample
  # return category
end
  def random(style)
    random_style = Style.all.sample
    random = random_style.name
    style_id = random_style.id
    category = Category.all.sample
    rano = category.name
    random_idea = Idea.all.sample
    random_id = random_idea.name
    return "Style:" + " " + random + ", "+ "Category:" + " " + rano + ", " + "Idea:" + random_id
  end

  protected
  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :firstname, :lastname, :email, :password, :image_cache])
    devise_parameter_sanitizer.permit(:update_user, keys: [:username, :firstname, :lastname, :email, :image_cache])
  end
end