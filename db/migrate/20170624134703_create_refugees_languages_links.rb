class CreateRefugeesLanguagesLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :refugees_languages_links do |t|
      t.integer :language_id
      t.integer :refugee_id
    end
  end
end
