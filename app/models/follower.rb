class Follower < ApplicationRecord
  belongs_to :user
  validate_uniqueness_of :follower_id, scope: :following_id
end