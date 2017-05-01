class CitiesController < ApplicationController

  def index
  	# Load all cities index
  	@cities = City.all
  end

  def show
  	@city = City.find(params[:id])
  	#sorts the posts on the front-end so they are shown by most recent
  	@posts = @city.posts.sort_by { |post| post.created_at}
  end

end

