class StaticPagesController < ApplicationController
before_action :authenticate_user!, only: [:about]

  def home
    @cities = City.all

  def about
  end
end
