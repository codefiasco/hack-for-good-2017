class SkillsRefugeesLink < ActiveRecord::Base
  belongs_to :skill
  belongs_to :refugee
end
