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
    #ログインしているユーザーが自分じゃなければチャットを行う
    if user_signed_in?
      @currentUserEntry=RoomUser.where(user_id: current_user.id)
      @userEntry=RoomUser.where(user_id: @property.user.id)
      if@property.user == current_user.id
      else
        @currentUserEntry.each do |cu|
          @userEntry.each do |u|
            if cu.room_id == u.room_id then
              @isRoom = true
              @room = cu.room_id
            end
          end
      
        if @isRoom
        else
          @isRoom = false
        end
      end
    end  
  end


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
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to user_path(current_user)
  end	
  #物件の検索画面表示
  #検索アクション
  def search
    keywords = params.dig(:q, :keywords_cont_all)&.split(/[[:space:]]/)
    params[:q][:keywords_cont_all] = keywords if keywords

    @q = Property.ransack(params[:q])
    if params[:q].present?
      #distinct 検索時に重複がないようにする
      @properties = @q.result(distinct: true)
      render :index
    end
  end  

  def my_property
    @user = current_user
    @properties = Property.where(user_id: @user.id)
  end



  private
  def property_params
    params.require(:property).permit(:genre_id, :property_name, :prefecture_id, :area_id, :property_address, :intruduction, :price, :img)
  end
  
end
