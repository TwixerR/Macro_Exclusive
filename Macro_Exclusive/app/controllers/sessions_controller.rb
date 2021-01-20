class SessionsController < ApplicationController

	before_action :authorized
	skip_before_action :authorized, only: [:login, :new, :create, :welcome]

	def new
	end

def create
	@user = User.find_by(username: params[:username])
	if @user && @user.authenticate(params[:password])
		sessions[:user_id] = @user.id
		redirect_to '/welcome'
	else      
		redirect_to '/login'   
	end
end

	def login
	end
	
	def page_requires_login
	end

	def welcome
	end
end
