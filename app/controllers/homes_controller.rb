class HomesController < ApplicationController
  before_action :set_home ,only: [:show]
  def index
  end

  def new
  	@home = current_user.build_home
  end

  def create
  	@home = current_user.build_home(home_params)
  	if @home.save 
  		redirect_to @home
  	else 
  		redirect_to new
  	end
  end

  def show

  end

  private 

  	def home_params
  		params.require(:home).permit(:title,:description,:main_image,:press_image,:display_image)
  	end
  	def set_home
  		@home =Home.last
  	end

end
