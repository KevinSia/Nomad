class Wish < ActiveRecord::Base
  belongs_to :user
  belongs_to :quest

  validates :quest_id, uniqueness: { scope: :user_id }
end
