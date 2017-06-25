class Refugee < ActiveRecord::Base
  has_many :refugees_professions_links
  has_many :professions, through: :refugees_professions_links

  has_many :refugees_languages_links
  has_many :languages, through: :refugees_languages_links4

  has_many :skills_refugees_links
  has_many :skills, through: :skills_refugees_links

  has_many :refugees_jobs_links
  has_many :jobs, through: :refugees_jobs_links

  has_secure_password

  has_one :degree

  mount_uploader :avatar, AvatarUploader
end
