class Room < ApplicationRecord	
	has_many :messages
	has_many :room_users
	#追加
	has_many :users, through: :room_users, dependent: :destroy
end
