class PostsController < ApplicationController
before_action :authenticate_user!

	def show
		@post = Post.find(params[:id])
		@post.title = @post.title.upcase
		@user = User.find(@post.user_id)
	end

	def new
		# @city = City.find(params[:city_id])
		@post = Post.new
	end

	def create
		post = Post.create(post_params)
		city = post.city
		# binding.pry
		redirect_to city_post_path(city, post)
	end

	private
	def post_params
		params.require(:post)
		.permit(:title, :content)
		.merge(user_id: current_user.id, city_id: params[:city_id])
	end
end



