class AddAvatarToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :avatar, :string
  end
end
