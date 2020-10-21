class CreateMessageUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :message_users do |t|
      t.references :user, foreign_key: true
      t.references :message, foreign_key: true
      
      t.timestamps
    end
  end
end
