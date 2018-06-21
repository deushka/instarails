class Post < ApplicationRecord
	validates :body, length: {maximum: 255}
	validates :user_id, presence: true
	belongs_to :user
	has_one_attached :image

	default_scope -> {order "created_at DESC"}
end
