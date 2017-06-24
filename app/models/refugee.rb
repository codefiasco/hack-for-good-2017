class Refugee < ActiveRecord::Base
  belongs_to :organization

  has_many :refugees_professions_links
  has_many :professions, through: :refugees_professions_links

  has_many :refugees_languages_links
  has_many :languages, through: :refugees_languages_links

  has_one :degree
end
