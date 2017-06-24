class CreateRefugeesProfessionsLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :refugees_professions_links do |t|
      t.integer :profession_id
      t.integer :refugee_id
    end
  end
end
