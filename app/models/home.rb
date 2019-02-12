class Home < ApplicationRecord
	belongs_to :user
	mount_uploader :main_image,ImageUploader
	mount_uploader :display_image,ImageUploader
	mount_uploader :press_image,ImageUploader

end
