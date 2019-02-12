class BoxesController < ApplicationController
	before_action :set_box , only: [:edit,:update,:destroy,:show]
  before_action :authenticate_user!, except: [:index,:show]

  def index
  	@boxes = Box.all.order("created_at desc")
  end

  def show
    @review = Review.where(:box_id => @box.id).order("created_at DESC")
    
    if @review.blank?
      @avg_rating = 0
    else
      @avg_rating = @review.average(:rating).round(2)
    end
    @random_box = Box.where.not(id: @box).order("RANDOM()")
  end


  def new
    @box = current_user.boxes.build  	
  end

  def create 
    @box = current_user.boxes.build(box_params)
    if @box.save
      flash[:notice] = "Box was created successfully."
      redirect_to @box
    else
      redirect_to 'new'
    end
  end 

  def edit

  end
  def update
    if @box.update(box_params)
      redirect_to @box ,notice: "Box was updates successfully."
    else 
      redirect_to "edit"
    end
  end

  def destroy
    if @box.destroy
      redirect_to boxes_path,alert: "Box was destroyed successfully"
    end
  end 
  
private 
	def box_params
    params.require(:box).permit(:brand,:model,:description,:title,:price,:image)
  end
  def review_params
    params.require(:review).permit(:rating,:comment)
  end

  def set_box
    @box = Box.find(params[:id])
  end
end


