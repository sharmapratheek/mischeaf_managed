class ChargesController < ApplicationController
before_action :set_cart,only: [:create]
def new
end

def create
  # Amount in cents

  @amount = @cart.total_price*100
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'inr'
  )
  redirect_to boxes_path
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end


end

