class ChangePriceInActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :price, :string
    add_column :activities, :price, :integer
  end
end
