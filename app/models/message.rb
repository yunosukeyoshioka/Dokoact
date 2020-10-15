class Message < ApplicationRecord
	#Userテーブルとのアソシエーション。別名で外部キー参照
	
	belongs_to :room
	belongs_to :user

end
