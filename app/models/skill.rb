class Skill < ActiveRecord::Base
  has_many :jobs_skills_links
  has_many :jobs, through: :jobs_skills_links

  has_many :skills_refugees_links
  has_many :refugees, through: :skills_refugees_links
end
