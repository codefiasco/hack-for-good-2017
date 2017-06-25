class AddAvatarToRefugees < ActiveRecord::Migration[5.0]
  def change
    add_column :refugees, :avatar, :string
  end
end
