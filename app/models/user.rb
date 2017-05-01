class User < ApplicationRecord
	has_many :posts, dependent: :destroy
	has_many :cities, through: :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
