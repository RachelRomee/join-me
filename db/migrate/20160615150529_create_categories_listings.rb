class CreateCategoriesListings < ActiveRecord::Migration
  def change
    create_table :categories_listings do |t|
      t.references :category, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
