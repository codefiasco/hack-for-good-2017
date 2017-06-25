class Refugee < ActiveRecord::Base
  has_many :refugees_professions_links
  has_many :professions, through: :refugees_professions_links

  has_many :refugees_languages_links
  has_many :languages, through: :refugees_languages_links

  has_secure_password

  has_one :degree
end
