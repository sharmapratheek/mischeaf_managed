class CartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def new
    @cart = Cart.new
  end

  def create 
    @cart = Cart.new(cart_params)
    if @cart.save
    	redirect_to @cart ,notice: 'Cart was successfully created.'
    else 
    	redirect_to 'new'
    end 
  end 

  def edit
  end

  def update 
   if @cart.update(cart_params)
   	redirect_to @cart
   else 
   	redirect_to 'edit'
   end 
  end 

  def show
  end

  def index
    @carts = Cart.all
  end


  def destroy
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
  	redirect_to root_path, alert: 'Cart was successfully destroyed.'
  end 

  private 
    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to root_path, alert: "That cart doesn't exist"
    end
      def cart_params
      params.fetch(:cart, {})
    end
    def set_cart
      @cart = Cart.find(params[:id])
    end

end
