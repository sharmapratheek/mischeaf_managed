class AboutsController < ApplicationController
	before_action :set_about,only: [:show]
  def index
  end

  def new
  	@about = current_user.build_about
  end

  def create 
  	@about = current_user.build_about(about_params)
  	if @about.save
  		redirect_to @about,notice: "The About page has been filled"
  	else 
  		redirfect_to new
  	end
  end

  def edit
  	
  end

  def update 

  end

  def show
  end

  private 
  	def about_params
  		params.permit(:about).permit(:title1,:description1,:title2,:description2)
  	end
  	def set_about 
  		@about = About.last   
  	end 
end
