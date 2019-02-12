class ReviewsController < ApplicationController

	before_action :set_box

  def create 
  	@review = @box.reviews.create(reviews_params)
  	@review.user_id = @box.user.id
  	@review.box_id = @box.id 
  	if @review.save 
  		redirect_to @box
  	else 
  		redirect_to @box
  	end
  end  	


  private 
	def reviews_params
		params.require(:review).permit(:rating,:comment,:rname,:rtitle,:remail)
	end

	def set_box
		@box = Box.find(params[:box_id])
	end


end
