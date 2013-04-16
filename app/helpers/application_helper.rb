module ApplicationHelper
	def flash_messages
		fl = flash[:notice]
		flash[:notice] = nil
		fl
	end
end
