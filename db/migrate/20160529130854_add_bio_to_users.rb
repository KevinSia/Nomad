class AddBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :text
    add_column :quests, :featured, :boolean
  end
end
