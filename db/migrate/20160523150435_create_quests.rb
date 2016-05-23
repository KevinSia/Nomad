class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :title
      t.integer :duration
      t.string :country
      t.string :city
      t.string :lower_price
      t.string :upper_price
      t.string :category
      t.integer :user_id, index: true
      t.text :description

      t.timestamps null: false
    end
  end
end
