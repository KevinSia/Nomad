class Quest < ActiveRecord::Base
  has_many :activities, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :activities

  CATEGORIES = [
    ['Friends'] * 2,
    ['Family'] * 2,
    ['Couple'] * 2,
    ['Backpacking'] * 2
  ]

  def total_price
    activities.sum(:price)
  end
end
