class RefugeesJobsLink < ActiveRecord::Base
  belongs_to :refugee
  belongs_to :job
end
