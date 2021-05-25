class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :messages, :channels
    add_foreign_key :messages, :users
  end
end
