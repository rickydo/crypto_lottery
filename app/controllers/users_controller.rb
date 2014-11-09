class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create 
		@user = User.new(new_user_params)

		if @user.save
			sign_in(@user)
			redirect_to root_path
		else
			redirect_to root_path
			flash[:error] = @user.errors.empty? ? "Error" : @user.errors.full_messages.to_sentence
		end
	end

	def new_user_params
		params.require(:user).permit(
			:email,
			:coin_address,
			:password,
			:password_confirmation
			)
	end
end
