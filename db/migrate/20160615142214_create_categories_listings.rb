class CreateCategoriesListings < ActiveRecord::Migration
  def change
    create_table :categories_listings do |t|
      t.references :categories, index: true, foreign_key: true
      t.references :linstings, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
