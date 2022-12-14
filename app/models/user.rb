class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :likes
  has_many :posts, dependent: :destroy
  has_one_attached :image
  def total_posts
  0
  end
  
  def total_followers
  0
  end

  def total_following
  0
  end
end
