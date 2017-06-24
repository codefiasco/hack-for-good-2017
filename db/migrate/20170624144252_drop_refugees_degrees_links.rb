class DropRefugeesDegreesLinks < ActiveRecord::Migration[5.0]
  def change
    drop_table :refugees_degrees_links
  end
end
