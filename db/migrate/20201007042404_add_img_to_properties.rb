class AddImgToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :img, :string
  end
end
