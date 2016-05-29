class Quest < ActiveRecord::Base

  has_many :activities, dependent: :destroy
  has_many :wishes, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :activities

  mount_uploaders :photos, PhotosUploader

  scope :latest, -> { order(created_at: :desc) }

  validates :title, presence: true

  CATEGORIES = [
    ['Friends'] * 2,
    ['Family'] * 2,
    ['Couple'] * 2,
    ['Backpacking'] * 2
  ]

  def total_price
    activities.sum(:price)
  end

  def is_wished?(user)
    wishes.find_by(user_id: user.id)
  end
end
