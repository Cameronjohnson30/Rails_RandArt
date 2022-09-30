class Category < ApplicationRecord
  belongs_to :style
  has_many :ideas, dependent: :destroy
end