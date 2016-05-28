class AddPhotosToQuests < ActiveRecord::Migration
  def change
    add_column :quests, :photos, :json
  end
end
