class CitiesController < ApplicationController
  def index
  	# Load all cities index
  	@cities = City.all
  end
end
