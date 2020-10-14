class RoomsController < ApplicationController
#会話履歴一覧表示
	def index
		current_message_users = current_user.message_users
    my_room_ids = []
    current_message_users.each do |message_user|
      my_room_ids << message_user.room.id
    end
    # さらにuser_idがログインユーザーでは無いレコードを抽出
    @another_message_users = MessageUser.where(room_id: my_room_ids).where.not(user_id: current_user.id)
  end
#会話の詳細表示
  def show
  	@room = Room.find(params[:id])
    @message = Message.new
    # メッセージ相手を抽出
    @another_message_user = @room.message_users.find_by('user_id != ?', current_user.id)
  end
#会話(部屋)の作成
  def create
  	room = Room.create
    # MessageUserモデルにログインユーザーのレコードを作成
    current_message_user = MessageUser.create(user_id: current_user.id, room_id: room.id)
    # MessageUserモデルにメッセージ相手のレコードを作成
    another_message_user = MessageUser.create(user_id: params[:room_user][:user_id], room_id: room.id)
    redirect_to room_path(@room)
  end
#会話(部屋)削除  
  def destroy
  end

end
