class Reply < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :replies, dependent: :destroy

end
