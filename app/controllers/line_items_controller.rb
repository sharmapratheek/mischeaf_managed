  class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_line_item , only: [:edit,:update,:show,:destroy]
  before_action :set_cart , only: [:create]

  def show
  end

  def index
  	@line_items = LineItem.all
  end

  def new
  	@line_item = LineItem.new
  end

  def create 
  	box = Box.find(params[:box_id])
  	@line_item = @cart.add_box(box)
  	if @line_item.save
  		redirect_to @line_item.cart,notice:"Item added to cart"
  	end 
  end

  def edit
  	
  end

  def update 
  	if @line_item.update(line_item_params) 
  		redirect_to @line_item,notice: "Line Item was successfully updated"
  	else
  		redirect_to 'edit' 
  	end 
  end

  def destroy
  	@cart = Cart.find(session[:cart_id])

   @line_item.destroy
  	redirect_to cart_path(@cart),notice: "Line Item destroyed successfully"
  end


  private 

  	def set_line_item 
  		@line_item = LineItem.find(params[:id])
  	end

  	def line_item_params
  		params.require(:line_item).permit(:box_id)
  	end
end
