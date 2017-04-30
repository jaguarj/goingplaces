class Post < ApplicationRecord
	belongs_to :user
	belongs_to :city

validates :title, :content, :presence => true
validates :title, length: { maximum: 200 }


end

