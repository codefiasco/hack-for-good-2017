class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :nif
      t.string :contact
      t.string :address
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
