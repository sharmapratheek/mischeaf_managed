class LineItem < ApplicationRecord
  belongs_to :box
  belongs_to :cart

  def total_price 
  	box.price.to_i * quantity.to_i
  end 
end
