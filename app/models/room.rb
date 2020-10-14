class Room < ApplicationRecord
	has_many :properties
	has_many :messages

end
