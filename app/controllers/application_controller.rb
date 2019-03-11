class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include CurrentCart
	include About1
	before_action :set_cart 
	before_action :set_about


end
