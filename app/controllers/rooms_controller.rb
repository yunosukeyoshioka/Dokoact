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
    #メッセージを降順で表示

    @messages = Message.where(room_id:params[:id])

    # メッセージ相手を抽出
    #@another_message = @room.messages.find_by('user_id != ?', current_user.id)
  end
#会話(部屋)の作成
  def create
    #作成するroomをidと紐付ける。user_idが現在のユーザーでidを取得してroomを作成
  	room = Room.create do |r|
      r.room_users.new([
        {user_id: current_user.id}, 
        {user_id: params[:user_id]}
      ])
    end  
    redirect_to room_path(room)
  end
#会話(部屋)削除  
  def destroy
  end

end
