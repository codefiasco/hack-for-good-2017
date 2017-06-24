class DropRefugeesLangs < ActiveRecord::Migration[5.0]
  def change
    remove_column :refugees, :native_lang
    remove_column :refugees, :second_lang
    remove_column :refugees, :third_lang
  end
end
