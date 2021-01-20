class ApplicationController < ActionController::Base

	#authentication section
	before_action :authorized
	helper_method :current_user
	helper_method :logged_in?
	
	def authorized   
		redirect_to 'sessions#login' unless logged_in?
	end

	def priviliged
		
	end

	def current_user
		User.find_by(id: session[:user_id])
	end

	def logged_in?       
		!current_user.nil?
	end
end
