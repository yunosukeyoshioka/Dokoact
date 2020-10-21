class PrefecturesController < ApplicationController
	def create
		@prefecture = Prefecture.new(prefecture_params)
		@prefectures = Prefecture.all
	end

	private
  def prefecture_params
    params.require(:prefecture).permit(:property_id, :user_id, :genre_id, :prefecture)
  end
  
end
