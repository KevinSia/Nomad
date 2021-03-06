class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :user_id
      t.integer :quest_id

      t.timestamps null: false
    end

    add_index :wishes, :user_id
    add_index :wishes, :quest_id
  end
end
