class Genre < ApplicationRecord
	has_many :properties

	has_many :prefectures
	
end
