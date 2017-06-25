class AddPassword < ActiveRecord::Migration[5.0]
  def change
  	add_column :refugees, :password_digest, :string
  end
end
