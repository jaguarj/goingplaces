class UsersController < ApplicationController

  def show
  	@user = current_user
  	@posts = @user.posts

  	#I need to get cities so that I can make a for loop through them
  	@cities = City.all
  	# this makes an array that stores the occurance of cities by city_id 
  	@city_user_info = @user.cities.select(:id).map { |c| c.id }
  end

end
