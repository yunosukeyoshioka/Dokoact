class Property < ApplicationRecord
	#画像
	mount_uploader :img, ImgUploader

	belongs_to :user
	belongs_to :genre
	belongs_to :prefecture, optional: true
	belongs_to :area, optional: true
	
	has_many :favorites
	has_many :users, through: :clips
	
	has_many :rooms, through: :messages
	
	
	

end
