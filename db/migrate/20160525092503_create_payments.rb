class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :quest_id
      t.integer :user_id
      t.integer :price

      t.timestamps null: false
    end
  end
end
