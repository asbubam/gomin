class ProblemsController < ApplicationController

	def create
		@problem = Problem.new(params[:problem])

		if @problem.save
		else
			flash[:notice] = "save task failed."
		end

		redirect_to root_path
	end
end
