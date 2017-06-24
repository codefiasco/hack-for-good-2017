class CreateSkillsRefugeesLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :skills_refugees_links do |t|
      t.integer :refugee_id
      t.integer :skill_id
    end
  end
end
