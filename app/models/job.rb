class Job < ActiveRecord::Base
  has_many :jobs_skills_links
  has_many :skills, through: :jobs_skills_links

  has_many :refugees_jobs_links
  has_many :refugees, through: :refugees_jobs_links

  belongs_to :organization
end
