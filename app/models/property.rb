class Property < ApplicationRecord
	#画像
	mount_uploader :img, ImgUploader
	belongs_to :genre
	belongs_to :prefecture, optional: true
	belongs_to :area, optional: true
	
	has_many :favorites
	has_many :users, through: :favorites
	
	has_many :rooms, through: :messages

 ransacker :keywords do |parent|
    Arel::Nodes::InfixOperation.new('||', parent.table[:property_name], parent.table[:intruduction])
  end

	
	
	

end
