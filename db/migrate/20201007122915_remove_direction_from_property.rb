class RemoveDirectionFromProperty < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :direction, :string
  end
end
