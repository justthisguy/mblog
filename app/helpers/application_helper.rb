module ApplicationHelper
	
	# Return a title on a per-page basis.
	def titleToHelpThings
		base_title = "Ruby on Rails Tutorial Sample App"
		if @page_title.nil?
			base_title
		else
			"#{base_title} | #{@page_title}"
		end
	end
end
