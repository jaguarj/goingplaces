class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_filter :nav_bar_helper

  # def nav_bar_helper
  # 	@city = nil
  # 	cityname = ''
  # end



end
