class RemoveOwnerIdFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :owner_id, :integer
  end
end
