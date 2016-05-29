class User < ActiveRecord::Base
  include Clearance::User

  has_many :authentications, dependent: :destroy
  has_many :quests

  validates :first_name, presence: true

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def self.create_with_auth_and_hash(authentication, auth_hash)
    create! do |u|
      u.first_name = auth_hash["info"]["first_name"] || 'Traveler'
      u.last_name = auth_hash["info"]["last_name"] || 'None'
      u.email = auth_hash["extra"]["raw_info"]["email"]
      u.encrypted_password = User.new_token
      u.remember_token = User.new_token
      u.authentications << authentication
    end
  end

  def fullname
    if first_name?
      "#{first_name}" + (last_name ? " #{last_name}" : "")
    else
      "Traveler"
    end
  end

  def fb_token
    x = authentications.where(provider: :facebook).first
    return x.token unless x.nil?
  end

  def password_optional?
    true
  end

end
