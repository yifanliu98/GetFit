class UsersController < ApplicationController
	def index
		
	end

	def login
		user = User.find_by(email:params[:login][:email])
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id
			if user.admin
				redirect_to admin_path
			else
				redirect_to home_path
			end
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
