class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :property, optional: true
	# validates :user_id, uniqueness: { scope: :property_id }
end
