class User < ActiveRecord::Base
  include Clearance::User

  validates :first_name, presence: true
end
