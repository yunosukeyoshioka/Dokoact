class AreasController < ApplicationController
	def create
		@area = Area.new(area_params)
	end

	private
  def area_params
    params.require(:area).permit(:property_id, :user_id, :genre_id, :width)
  end
  
end
