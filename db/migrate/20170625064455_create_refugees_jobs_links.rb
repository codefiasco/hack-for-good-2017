class CreateRefugeesJobsLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :refugees_jobs_links do |t|
      t.integer :refugee_id
      t.integer :job_id
    end
  end
end
