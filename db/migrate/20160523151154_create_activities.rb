class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :day
      t.text :description
      t.string :estimated_time
      t.string :location
      t.string :price
      t.string :references
      t.integer :quest_id, index: true

      t.timestamps null: false
    end
  end
end
