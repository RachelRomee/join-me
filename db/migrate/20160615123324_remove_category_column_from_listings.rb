class RemoveCategoryColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :category
  end
end
