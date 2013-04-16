class ProblemsController < ApplicationController

	def create
		@problem = Problem.new(params[:problem])

		if @problem.save
		else
			flash[:notice] = "save failed #{@problem.errors.full_messages}"
		end

		redirect_to root_path
	end

	def like 
		@problem = Problem.find(params[:id]) 
		@problem.increment!(:like)

		render :update do |page|
			page.replace dom_id(@problem), :partial => 'problem', :locals => { :problem => @problem }
		end
	end 

	def dislike
		@problem = Problem.find(params[:id]) 
		@problem.increment!(:dislike)

		render :update do |page|
			page.replace dom_id(@problem), :partial => 'problem', :locals => { :problem => @problem }
		end
	end 

end
