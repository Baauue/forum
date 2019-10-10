class UsersController < ApplicationController

	def logout
		user = current_user
		user.destroy
		redirect_to root_url, notice: "User is deleted! Joep"
	end

end