class ApplicationController < ActionController::Base
	helper_method :current_user
	# before_action :authenticate

	add_flash_types :danger, :info, :warning, :success

	def current_user
		@current_user ||= User.find(session[:user_id])
	end

	def authenticate
		redirect_to sessions_new_path unless current_user
	end

end
