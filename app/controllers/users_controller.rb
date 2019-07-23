class UsersController < ApplicationController
	def index

	#	remember_user = User.find_by(remember_digest:User.digest(SecureRandom.urlsafe_base64))
	#	if remember_user
	#		log_in(remember_user)
	#		if remember_user.admin
	#			redirect_to admin_path
	#		else
	#			redirect_to home_path
	#		end
	#	end
	
	end

	def login
		user = User.find_by(email:params[:login][:email])
		if user && user.authenticate(params[:login][:password])
			log_in user
		#	remember user
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
