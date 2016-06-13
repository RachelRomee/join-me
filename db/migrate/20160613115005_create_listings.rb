class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :content
      t.string :type
      t.string :category
      t.string :city
      t.datetime :date

      t.timestamps null: false
    end
  end
end
