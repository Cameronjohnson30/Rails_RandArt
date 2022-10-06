module UsersHelper

  def profile_picture user
    image_path = user.image.present? ? user.image.thumb.url : "default.png"
    image_tag(image_path)
  end

  def can_edit_profile?(user_id)
    user.signed_in? && current_user.id == id
  end

end