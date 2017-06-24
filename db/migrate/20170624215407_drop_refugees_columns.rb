class DropRefugeesColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :refugees, :native_lang
  end
end
