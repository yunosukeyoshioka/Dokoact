class Property < ApplicationRecord
	#画像
	mount_uploader :img, ImgUploader

	belongs_to :user
	belongs_to :genre

	has_many :rooms, through: :messages
	has_many :favorites
	belongs_to :prefecture, optional: true
	belongs_to :area, optional: true
	

end
