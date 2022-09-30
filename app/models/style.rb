class Style < ApplicationRecord
  has_many :categories, dependent: :destroy
end