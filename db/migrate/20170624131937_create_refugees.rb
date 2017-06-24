class CreateRefugees < ActiveRecord::Migration[5.0]
  def change
    create_table :refugees do |t|
      t.string :name
      t.date :birthday
      t.boolean :gender
      t.string :birth_place
      t.string :nationality
      t.date :arrival_date
      t.string :father_name
      t.integer :father_id
      t.string :mother_name
      t.integer :mother_id
      t.integer :num_siblings
      t.string :native_lang
      t.string :second_lang
      t.string :third_lang
      t.string :address
      t.string :email
      t.string :phone
      t.string :additional_info
      t.string :religion
      t.integer :degree_id
    end
  end
end
