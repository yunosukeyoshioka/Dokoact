class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :property_id
      t.integer :owner_id
     

      t.timestamps
    end
  end
end
