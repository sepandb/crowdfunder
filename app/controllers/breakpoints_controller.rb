class BreakpointsController < ApplicationController



	def new
		@project = Project.find(params[:project_id])
		@breakpoint = Breakpoint.new
	end

	def create
		@breakpoint = Breakpoint.new(breakpoint_params)
		if @breakpoint.save
			redirect_to project_path(breakpoint_params[:project_id])
		else
			render :new
		end

	end

	private
	def breakpoint_params
		params.require(:breakpoint).permit(:amount, :reward, :project_id)
	end
end
