class AddIndexToMessageTable < ActiveRecord::Migration[6.1]
  def change
    add_index :messages, [:channel_id], name: :index_messages_on_channel_id
    add_index :messages, [:user_id], name: :index_messages_on_user_id
  end
end
