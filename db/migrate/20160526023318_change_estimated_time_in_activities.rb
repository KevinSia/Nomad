class ChangeEstimatedTimeInActivities < ActiveRecord::Migration
  def change
    remove_column :quests, :lower_price, :string
    remove_column :quests, :upper_price, :string
    remove_column :activities, :estimated_time, :string
    add_column :activities, :estimated_time, :integer
  end
end
