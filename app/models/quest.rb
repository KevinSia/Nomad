class Quest < ActiveRecord::Base
  has_many :activities, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :activities
end
