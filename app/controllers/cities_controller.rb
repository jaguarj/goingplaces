class CitiesController < ApplicationController
  def index
  	# Load all cities index
  	@cities = City.all
  end

  def show
  	@city = City.find(params[:id])
  end

end

