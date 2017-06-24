class Recommendation < ActiveRecord::Base
  belongs_to :issue, polymorphic: true
end
