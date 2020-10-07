class FavoritesController < ApplicationController
#いいねした物件一覧表示　 
  def index
  	@user = current_user
  	@favorites = Favorite.where(user_id:@user.id).all
  end
#いいね
  def create

  end
  #いいねした物件の削除
  def destroy
  end
#いいねの削除
  def withdraw
  end

end
