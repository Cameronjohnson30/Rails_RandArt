class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validate_uniqueness_of :post_id, scope: :user_id

  after_create :increase_post_like_counter
  before_destroy :decrease_post_like_counter

  private

  def update_post_like_counter
    Post.find(self.post_id).increment(:total_likes_count).save
end