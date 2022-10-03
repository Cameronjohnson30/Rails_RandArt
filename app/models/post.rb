class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  before_create :set_active
  scope :active, -> { where active: true }

end
