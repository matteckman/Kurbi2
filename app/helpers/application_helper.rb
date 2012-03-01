module ApplicationHelper
	# Return a title on a per-page basis.
	def title
		base_title = "Kurbi Health"
		if @title.nil?
			base_title
		else 
			"#{base_title} || #{@title}"
		end
	end
	
	def logo
		image_tag("kurbi-logo.png", :alt => "Kurbi Health")
	end	

end
