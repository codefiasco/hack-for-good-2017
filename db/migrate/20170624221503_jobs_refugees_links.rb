class JobsRefugeesLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs_skills_links do |t|
      t.integer :job_id
      t.integer :skill_id
    end
  end
end
