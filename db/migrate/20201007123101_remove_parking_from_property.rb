class RemoveParkingFromProperty < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :parking, :string
  end
end
