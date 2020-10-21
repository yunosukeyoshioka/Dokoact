class RemoveFloorFromProperty < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :floor, :string
  end
end
