class AddRoomToMessageUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :message_users, :room, foreign_key: true
  end
end
