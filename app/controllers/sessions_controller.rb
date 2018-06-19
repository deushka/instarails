class SessionsController < ApplicationController

	def new
<<<<<<< HEAD
=======

>>>>>>> 323ab7533b86b961091794cd083e47830b2ae140
	end

	def create
		login = params[:session][:login]
		if login.include? "@"
			user = User.find_by_email(login)
		else
			user = User.find_by_username(login)
		end
<<<<<<< HEAD
=======

>>>>>>> 323ab7533b86b961091794cd083e47830b2ae140
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
<<<<<<< HEAD
			render "new"
			flash[:error] = "Invalid username or password"
=======
			flash[:error] = "Invalid username or password"
			render "new"
>>>>>>> 323ab7533b86b961091794cd083e47830b2ae140
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end

end
<<<<<<< HEAD

=======
>>>>>>> 323ab7533b86b961091794cd083e47830b2ae140
