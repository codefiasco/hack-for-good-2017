class Organization < ActiveRecord::Base
  has_many :refugees

  has_secure_password
end
