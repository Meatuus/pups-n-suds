class SessionsController < ApplicationController
  def new
	end

	def create
		user = User.find_by(email: session_params[:email])
		if user && user.authenticate(session_params[:password])
			session[:user_id] = user.id
			redirect_to vehicles_url, notice: "You are now logged In :)"
		else
			flash[:notice] = "Invalid Email or Password"
			redirect_to new_users_url
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to users_url, alert: "You are logged out!"
	end

	private
	def session_params
		params.permit(:email, :password)
	end
end
