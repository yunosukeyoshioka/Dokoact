class RoomsController < ApplicationController
#チャット画面遷移URL直打ち防止
before_action :correct_user, only: [:show]
def correct_user
  @room = current_user.rooms.find_by(id: params[:id])
    unless @room
      redirect_to root_path
    end
end

#会話履歴一覧表示
  def index
    @rooms = Room.all
    @user = current_user
    @currentRoomUsers = current_user.room_users
    myRoomIds = []
    @currentRoomUsers.each do | r |
      myRoomIds << r.room.id
    end
    @anotherRoomUsers = RoomUser.where(room_id: myRoomIds).where('user_id != ?', @user.id)
  end
#会話の詳細表示
  def show
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = Message.where(room_id: params[:id])
    @room_users = @room.room_users
  end
#会話(部屋)の作成
  def create
  #作成するroomをidと紐付ける。user_idが現在のユーザーでidを取得してroomを作成
  	@room = Room.create do |r|
      r.room_users.new([
        {user_id: current_user.id}, 
        {user_id: params[:user_id]}
      ]) 
    end
     　redirect_to room_path(@room)
  end
end
