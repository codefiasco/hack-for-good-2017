class Profession < ActiveRecord::Base
  has_many :refugees_professions_links
  has_many :refugees, through: :refugees_professions_links
end
