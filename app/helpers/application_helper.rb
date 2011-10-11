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

	def get_logo
		image_tag("logo.png", :alt => "Sample App", :class => "round")
	end


end
