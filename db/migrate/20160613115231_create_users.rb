class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :gender
      t.integer :age
      t.string :city
      t.text :description
      t.string :photo
      t.references :listing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
