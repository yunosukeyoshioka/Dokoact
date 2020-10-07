class Message < ApplicationRecord
	#Userテーブルとのアソシエーション。別名で外部キー参照
	belongs_to :sender, class_name: 'User', foreign_key: :sender_id
	belongs_to :receiver, class_name: 'User', foreign_key: :receiver_id

	belongs_to :room

end
