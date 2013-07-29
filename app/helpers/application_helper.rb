module ApplicationHelper
	#defines the tittle helper and returns page per-page
	def full_title(page_title)
		base_title="Ambapo Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
