module ApplicationHelper

	def gravatar_for(user,options = {size: 40})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url,alt: user.name,class: "image is-rounded")
	end

	def cart_count_over_one
		return "<span class='tag is-dark'>#{@cart.line_items.count}</span>".html_safe
	end

	def cart_has_items
		return @cart.line_items.count > 0
	end

end
