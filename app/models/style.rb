class Style < ApplicationRecord
  has_many :categories, dependent: :destroy
  validates :name, presence: true
end