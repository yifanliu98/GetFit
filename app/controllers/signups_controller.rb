class SignupsController < ApplicationController

	def index

	end

	def create
		user = User.new(user_params)

		if user.save
			flash[:errors] = ["Sign up successfully, please login first"]
			redirect_to root_path
		else
			flash[:errors] = user.errors.full_messages
			redirect_to "/signups"
		end
	end
	
	private
	
	def user_params
	    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
    end

end