class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  scope :active, -> { where active: true }
  
  def total_likes
    0
  end
end
