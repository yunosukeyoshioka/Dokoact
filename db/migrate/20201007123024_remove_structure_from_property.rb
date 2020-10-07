class RemoveStructureFromProperty < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :structure, :string
  end
end
