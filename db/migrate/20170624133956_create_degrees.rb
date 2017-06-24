class CreateDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :degrees do |t|
      t.string :name
    end
  end
end
