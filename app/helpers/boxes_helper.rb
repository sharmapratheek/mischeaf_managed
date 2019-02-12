module BoxesHelper

	def box_author(box)
		user_signed_in? &&  current_user.id == box.user_id
	end

end


