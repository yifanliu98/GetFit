class SignupsController < ApplicationController

	def index

	end

	def create
		user = User.new(user_params)

		if user.save
			session[:user_id] = user.id
			redirect_to home_path
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