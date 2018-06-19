module SessionsHelper
<<<<<<< HEAD
	
=======

>>>>>>> 323ab7533b86b961091794cd083e47830b2ae140
	def sign_in(user)
		session[:user_id] = user.id
	end

	def signed_in?
		!current_user.nil?
	end

<<<<<<< HEAD
	def sign_out
		session[:user_id] = nil
		@current_user = nil
	end

=======
>>>>>>> 323ab7533b86b961091794cd083e47830b2ae140
	def current_user
		if session[:user_id]
			@current_user ||= User.find(session[:user_id])
		end
	end

<<<<<<< HEAD
=======
	def sign_out
		session[:user_id] = nil
		@current_user = nil
	end

>>>>>>> 323ab7533b86b961091794cd083e47830b2ae140
end
