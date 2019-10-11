class UsersController < ApplicationController

	 def edit
      	@user = User.find(params[:id])
      	if @user == current_user
      	else
      	end
    end

    def update
    	user = User.find params[:id]
    	user.update user_params
    	flash[:success] = 'Opgeslagen'
    	redirect_to root_path
    end

    private
    def user_params
    	params.require(:user).permit(:email, :first_name, :last_name)
    end

end