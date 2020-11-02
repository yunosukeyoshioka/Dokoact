class UsersController < ApplicationController
before_action :authenticate_user!, only: [:show, :edit]
before_action :set_user, only: [:show, :edit, :update]
#マイページの表示
  def show
    @guest_user = User.find_by(email: 'sample@sample')
    @properties = Property.where(user_id: @user.id)
    #DM
    # MessageUserモデルからログインユーザーのレコードを抽出
    @current_message_user = MessageUser.where(user_id: current_user.id)
    # MessageUserモデルからメッセージ相手のレコードを抽出
    @another_message_user = MessageUser.where(user_id: @user.id)
    unless @user.id == current_user.id
      @current_message_user.each do |current|
        @another_message_user.each do |another|
          # ルームが存在する場合
          if current.room_id == another.room_id
            @is_room = true
            @room_id = current.room_id
          end
        end
      end
# ルームが存在しない場合は新規作成
      unless @is_room
        binding.pry
        @room = Room.new
        @room_user = RoomUser.new
      end
    end
  end
#マイページの編集画面表示
  def edit
    unless @user == current_user
      redirect_to user_path(@user)
    end
  end
#マイページの編集
  def update 
    if @user.update(user_params) 
      redirect_to user_path, notice: "会員情報を変更しました"
    else
      flash[:danger] = 'お客様の情報を更新出来ませんでした。空欄の箇所はありませんか？'
      render :edit
    end
  end	
#退会画面の表示
  def unscribe
  end
#退会処理
  def withdraw
    current_user.update(is_valid: true)
    current_user.properties.destroy_all
    current_user.destroy
    reset_session
    redirect_to root_path, info: 'ありがとうございました。またのご利用を心よりお待ちしております。'
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :postcode, :address, :phone_number)
  end

  def set_user
    @user = User.find(params[:id])
  end  

end
