class HomeController < ApplicationController
 #トップ画面。都道府県選択画面の表示
  def top
  	@prefectures = Property.all
  	pp @prefectures
  end

#サイトの説明画面の表示
  def about
  end


	private
  def prefecture_params
    params.require(:property).permit(:prefecture, :name)
  end

  	
end
