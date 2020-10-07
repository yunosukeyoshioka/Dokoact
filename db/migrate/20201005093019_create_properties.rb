class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :property_name
      t.integer :prefecture
      t.string :property_address
      t.text :intruduction
      t.string :property_address
      t.string :direction
      t.integer :area
      t.string :floor
      t.integer :price, default: 0
      t.string :structure
      t.string :parking
      t.text :etc

      t.timestamps
    end
  end
end
