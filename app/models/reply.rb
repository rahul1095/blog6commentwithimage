class Reply < ApplicationRecord
	has_many :replies, dependent: :destroy
	mount_uploader :image, ImageUploader
end
