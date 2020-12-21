class Property < ApplicationRecord
	#画像投稿用
	mount_uploader :img, ImgUploader
	belongs_to :genre
	belongs_to :prefecture, optional: true
	belongs_to :area, optional: true

	has_many :favorites, dependent: :destroy
	has_many :users, through: :favorites

	belongs_to :user
	has_many :rooms
	has_many :messages

#物件検索時のバリデーション
	validates :property_name, length: { in: 1..80 }, presence: true
	validates :intruduction, length: { in: 1..1000}, presence: true


 ransacker :keywords do |parent|
    Arel::Nodes::InfixOperation.new('||', parent.table[:property_name], parent.table[:intruduction])
  end


end
