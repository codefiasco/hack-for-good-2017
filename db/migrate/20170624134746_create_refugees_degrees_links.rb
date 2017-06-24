class CreateRefugeesDegreesLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :refugees_degrees_links do |t|
      t.integer :degree_id
      t.integer :refugee_id
    end
  end
end
