class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
      t.string :description
      t.text :recommendation
    end
  end
end
