class RemoveDayFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :day, :string
    add_column :activities, :photos, :json
  end
end
