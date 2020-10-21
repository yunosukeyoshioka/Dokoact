class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :property_name
      t.integer :prefecture_id
      t.string :property_address
      t.text :intruduction
      t.string :direction
      t.integer :area_id
      t.string :floor
      t.integer :price, default: 0
      t.string :structure
      t.string :parking  
      t.string :img

      t.timestamps
    end
  end
end
