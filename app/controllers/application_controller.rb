class ApplicationController < ActionController::Base
	before_action :set_timezone

	def set_timezone
	   # if current_user && current_user.time_zone
	   #    Time.zone = current_user.time_zone
	   #  end
	   Time.zone = "Taipei"
	end
end
