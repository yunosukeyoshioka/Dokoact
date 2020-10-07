class Room < ApplicationRecord
	has_many :properties
	has_many :messages

	belongs_to :owner, class_name: 'User', foreign_key: :owner_id
end
