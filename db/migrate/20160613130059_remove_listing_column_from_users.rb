class RemoveListingColumnFromUsers < ActiveRecord::Migration
  def change

    remove_column :users, :listing_id
  end
end
