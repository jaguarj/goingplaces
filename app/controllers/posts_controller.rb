class PostsController < ApplicationController

def show
	@post = Post.find(params[:id])
	@post.title = @post.title.upcase
	@user = User.find(@post.user_id)


end

def new


end



end
