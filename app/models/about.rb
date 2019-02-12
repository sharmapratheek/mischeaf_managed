class About < ApplicationRecord
	belongs_to :user
	mount_uploader :about_image,ImageUploader
end
