class City < ApplicationRecord
	# setting up for a join table using POSTS
	has_many :posts, dependent: :destroy
	has_many :users, through: :posts
end
