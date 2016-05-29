class Activity < ActiveRecord::Base
  belongs_to :quest
  mount_uploader :photos, ActivityPhotosUploader
end
