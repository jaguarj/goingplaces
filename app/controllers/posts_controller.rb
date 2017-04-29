class PostsController < ApplicationController
before_action :authenticate_user!



	def show
		@post = Post.find(params[:id])
		@city = @post.city
		@post.title = @post.title.upcase
		@user = User.find(@post.user_id)
	end

	def new
		@city = City.find(params[:city_id])
		@post = Post.new
	end

	def create
		post = Post.create(post_params)
		city = post.city

		redirect_to city_path(city, post)
	end
	def edit
		@city = City.find(params[:city_id])
		@post = Post.find(params[:id])
	end
	def update
		post = Post.find(params[:id])
		post.update(post_params)
		city = post.city
		redirect_to city_path(city)
	end

	def destroy
		@post = Post.find(params[:id])
		city = @post.city
		@post.destroy
		redirect_to city_path(city)
	end

	private

	def post_params
		params.require(:post)
		.permit(:title, :content)
		.merge(user_id: current_user.id, city_id: params[:city_id])
	end
end



