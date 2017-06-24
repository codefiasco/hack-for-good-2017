class AddNameToLanguages < ActiveRecord::Migration[5.0]
  def change
    add_column :languages, :name, :string
  end
end
