class AdminController < ApplicationController

	before_action :require_login, :require_admin
			
	def index

	end

end
