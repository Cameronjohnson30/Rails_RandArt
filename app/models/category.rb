class Category < ApplicationRecord
  has_and_belongs_to_many(:styles)
  has_many :ideas, dependent: :destroy
end