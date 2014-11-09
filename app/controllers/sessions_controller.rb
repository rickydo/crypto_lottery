class SessionsController < ApplicationController

	def new 
		if session[:user_id]
			redirect_to root_path
		end
	end

	def create
		@user = User.find_by(email: params[:email])
		# raise params.inspect
		if @user
			if @user.authenticate(params[:password])
				session[:user_id] = @user.id
				redirect_to root_path
			else 
				redirect_to root_path
			end
		else
			flash[:error] = "Incorrect email or password"
			redirect_to root_path
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end
