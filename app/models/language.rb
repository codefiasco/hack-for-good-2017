class Language < ActiveRecord::Base
  has_many :refugees_languages_links
  has_many :refugees, through: :refugees_languages_links
end
