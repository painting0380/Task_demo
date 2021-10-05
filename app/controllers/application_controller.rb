class ApplicationController < ActionController::Base
	before_action :set_timezone

	def set_timezone
	   # if current_user && current_user.time_zone
	   #    Time.zone = current_user.time_zone
	   #  end
	   Time.zone = "Taipei"
	end

	before_action :set_current_user

	def set_current_user
		if session[:user_id]
	      Current.user = User.find_by(id: session[:user_id])
	    end
	end
end
