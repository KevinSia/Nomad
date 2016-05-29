class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :quest_id
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :bookings, :user_id
    add_index :bookings, :quest_id
  end
end
