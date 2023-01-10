module ApplicationHelper
  def is_admin?
    current_user && current_user.admin
  end
  def is_user?
    !current_user.admin
  end
  def signed_in?
    !current_user
  end
  def is_owner?
    current_user.id === @post_user_id
  end
end