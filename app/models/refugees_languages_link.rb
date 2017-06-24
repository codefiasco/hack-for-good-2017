class RefugeesLanguagesLink < ActiveRecord::Base
  belongs_to :refugee
  belongs_to :language
end
