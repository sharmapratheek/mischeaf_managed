class Box < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	belongs_to :user
	has_many :reviews
	has_many :line_item
	mount_uploader :image,ImageUploader
	validates :title,:price,:model,:description,presence: true
	validates :description ,length: {maximum: 1000 ,too_long: "The description is too long"}
	validates :price,numericality: {only_integer: true},length: {maximum: 7}
	validates :title,length: {maximum: 140,too_long: "The title is too long"}
	BRAND = %w{Box1 Box2 Box3 Box4 Box5 Box6 Box7 Box8 Box9}
	FINISH = %w{Black White Navy Blue Red Clear Satin Yellow Seafoam}
	
	def price_in_cents
    	(price * 100).to_i
	 end


	private
	  def not_referenced_by_any_line_item
	    unless line_item.empty?
	      errors.add(:base, "Line items present")
	      throw :abort
	    end
	  end
end
