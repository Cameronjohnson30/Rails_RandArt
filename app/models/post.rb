class Post < ApplicationRecord
  default_scope { order created_at: :desc }
  has_one_attached :image
  belongs_to :user
  has_many :likes
  has_many :comments
  scope :active, -> { where active: true }
  
  def total_likes
    0
  end
end
