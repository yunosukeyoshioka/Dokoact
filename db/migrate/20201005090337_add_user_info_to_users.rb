class AddUserInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :postcode, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :is_valid, :boolean, default: false, null: false
  end
end
