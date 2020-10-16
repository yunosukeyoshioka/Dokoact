class RoomsController < ApplicationController
#会話履歴一覧表示
	def index

  @rooms = Room.all
  @users = User.all


  # @currentRoomUsers = current_user.room_users
  # myRoomIds = []
  # @currentRoomUsers.each do |room_user|
  #   myRoomIds << room_user.room.id
  # end

  # @anotherRoomUsers = RoomUser.where(room_id: myRoomIds).where('user_id != ?',@user.id)
end
#会話の詳細表示
  def show
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = Message.where(room_id: params[:id])
    @room_users = @room.room_users

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
