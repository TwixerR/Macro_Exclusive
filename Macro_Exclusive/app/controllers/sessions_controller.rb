class SessionsController < ApplicationController

	before_action :authorized
	skip_before_action :authorized, only: [:destroy, :login, :new, :create, :welcome]

	def new
	end

	def create
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			sessions[:user_id] = user.id
			redirect_to 'pages#index'
		else
			flash[:danger] = 'Invalid email/password combination'
			redirect_to '/sessions/login'   
		end
	end

	def login
	end
	
	def destroy
		@user=nil
		#redirect_to "pages#index", status: 302
	end

	def page_requires_login
	end

	def welcome
	end
end
