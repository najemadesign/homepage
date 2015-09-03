class UsersController < ApplicationController
	def create
		@user = User.new user_params
		if @user.save
			redirect_to root_path
			flash[:notice] = "Thank you! You will recieve updates as available."
		else
			redirect_to root_path
			flash[:notice] = "You must enter an email address."
		end
	end
	private
	def user_params
		params.require(:user).permit(:email)
	end
end
