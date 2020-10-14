class Message < ApplicationRecord
	#Userテーブルとのアソシエーション。別名で外部キー参照
	belongs_to :user
	belongs_to :room

end
