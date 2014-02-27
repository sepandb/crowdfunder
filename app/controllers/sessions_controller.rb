class SessionsController < ApplicationController

	def new

	end

	def create
		@user = login(params[:email], params[:password])
		if @user
			redirect_to root_path
		else
			flash.now[:alert] = "Invalid email/password"
			render :new

		end

	end
end
