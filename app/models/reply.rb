class Reply < ApplicationRecord
	has_many :replies, dependent: :destroy
end
