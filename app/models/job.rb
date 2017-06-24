class Job < ActiveRecord::Base
  has_many :jobs_skills_links
  has_many :skills, through: :jobs_skills_links

  belongs_to :organization
end
