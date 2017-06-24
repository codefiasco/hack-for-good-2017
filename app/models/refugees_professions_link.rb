class RefugeesProfessionsLink < ActiveRecord::Base
  belongs_to :refugee
  belongs_to :profession
end
