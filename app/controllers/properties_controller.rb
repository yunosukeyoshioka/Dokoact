class PropertiesController < ApplicationController
#物件新規投稿画面の表示
  def new
    @property = Property.new
  end
#物件一覧画面の表示
  def index
  end
#物件詳細画面の表示
  def show
  end
#物件編集画面の表示
  def edit
  end  
#物件の新規投稿
  def create
  end
#物件の削除
  def destroy
  end	
#物件の編集
  def update
  end	
#物件の検索画面表示
  def search
    @q = Property.ransack(params[:id])
    @properties = @q.result(district: true)
  end  

  private
  def property_params
    params.require(:property).permit(:user_id, :genre_id, :property_name, :prefecture, :property_address, :intruduction, :direction, :area, :floor, :price, :structure, :parking, :etc, :img)
  end
  
end
