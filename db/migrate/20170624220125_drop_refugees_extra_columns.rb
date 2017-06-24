class DropRefugeesExtraColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :refugees, :birth_place
    remove_column :refugees, :father_name
    remove_column :refugees, :father_id
    remove_column :refugees, :mother_name
    remove_column :refugees, :mother_id
    remove_column :refugees, :num_siblings
    remove_column :refugees, :religion
    remove_column :refugees, :arrival_date
  end
end
