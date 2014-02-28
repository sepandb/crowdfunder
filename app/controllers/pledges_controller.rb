class PledgesController < ApplicationController

	def create
		@pledge = Pledge.new
		@breakpoint = Breakpoint.find(params[:id])
		@pledge.amount = @breakpoint.amount
		@pledge.project_id = @breakpoint.project_id
		@pledge.user_id = current_user.id
		@pledge.save

		respond_to do |format|
			format.js
			format.html {redirect_to project_path(@breakpoint.project)}
		end
	end
end
