class Organization < ActiveRecord::Base
  has_many :jobs

  mount_uploader :avatar, AvatarUploader

  has_secure_password
end
