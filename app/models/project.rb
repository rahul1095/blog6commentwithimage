class Project < ApplicationRecord
  mount_uploader :document, ImageUploader
  has_many :comments, dependent: :destroy
  
end
