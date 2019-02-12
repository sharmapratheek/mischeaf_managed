class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    	has_many :boxes,dependent: :destroy
		has_many :reviews, dependent: :destroy  	
		has_one :home, dependent: :destroy
		has_one :about,dependent: :destroy
end
