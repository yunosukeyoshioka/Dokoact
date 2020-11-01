class HomeController < ApplicationController
 #トップ画面。都道府県選択画面の表示
  def top
  	@prefectures = Prefecture.all
  	pp @prefectures
    
 def new_guest
    @user = User.find_or_create_by!(email: 'sample@sample.com')
    sign_in @user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
    #@guest_user = User.find(1)
  end

#サイトの説明画面の表示
  def about
  end

	private
  def prefecture_params
    params.require(:property).permit(:prefecture, :name)
  end

  	
end
