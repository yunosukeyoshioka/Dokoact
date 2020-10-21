class FavoritesController < ApplicationController
#いいねした物件一覧表示　 
  def index
  	@user = current_user
  	@favorites = Favorite.where(user_id: @user.id).all
  end
#いいね
  def create
    @user_id = current_user.id
    @property_id = Property.find(params[:id]).id
    @favorite = Favorite.new(property_id: @property_id, user_id: @user_id)
    if @favorite.save
      redirect_to favorites_path(current_user)
     else
      redirect_to root_path
    end   
  end

  
  #いいねした物件の削除
  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      redirect_to favorites_path
    end
  end
#いいねの削除
  def withdraw
  end

end
