class PropertiesController < ApplicationController
#物件新規投稿画面の表示
  def new
    @property = Property.new
  end
#物件一覧画面の表示
  def index
    #seedに記述の都道府県情報を取得。.allと比べてidごとに一覧を表示できる
    @properties = Property.where(prefecture_id:params[:prefecture_id])
  end
#物件詳細画面の表示
  def show
    @property = Property.find(params[:id])
  end
#物件編集画面の表示
  def edit
  end  
#物件の新規投稿
  def create
    @property = Property.new(property_params)
    @property.user_id = current_user.id
    if @property.save
      redirect_to properties_path(property_params), notice: "物件を登録しました"
    else
      flash[:danger] = '物件を登録出来ませんでした。空欄の箇所はありませんか？'
      render "properties/new"
    end
  end
#物件の削除
  def destroy
  end	
#物件の編集
  def update
  end

  #物件の検索画面表示
  #検索アクション
  def search
    @q = Property.ransack(params[:q])
    if params[:q].present?
      #distinct 検索時に重複がないようにする
      @properties = @q.result(distinct: true)
      render :index
    end
  end  

  private
  def property_params
    params.require(:property).permit(:genre_id, :property_name, :prefecture_id, :area_id, :property_address, :intruduction, :price, :img)
  end
  
end
