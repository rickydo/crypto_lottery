module SessionsHelper

	def current_user
		User.find(session[:user_id]) if session[:user_id]
	end

	def sign_in(user)
		session[:user_id] = user.id 
		current_user = user
	end

	def sign_out
		session.delete(:user_id)
		current_user = nil
	end

end
