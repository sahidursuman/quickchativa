class CreateApiV1Chats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.text :message
      t.integer :room_id

      t.timestamps
    end
  end
end
