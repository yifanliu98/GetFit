class UsersController < ApplicationController
	def index
		@user = User.new
	end

	def login
		user = User.find_by(email:login_params[:email])
		if user && user.authenticate(login_params[:password])
			session[:user_id] = user.id
			redirect_to '/home'
		else
			flash[:errors] = ["Invalid Credentials"]
			redirect_to root_path
		end

	end

	def logout
		reset_session
		redirect_to root_path
	end


	private
		def login_params
			params.require(:login).permit(:email, :password)
		end

end
