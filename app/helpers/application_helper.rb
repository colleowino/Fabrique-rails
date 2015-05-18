module ApplicationHelper
	def action_new?
		params[:action] == 'new'
	end
end
