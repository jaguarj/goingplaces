class CitiesController < ApplicationController
  def index
  	# Load all cities index
  	@cities = City.all
  end

  def show
  	@city = City.find(params[:id])
  	@posts = @city.posts.sort_by { |post| post.created_at}
  end

end

