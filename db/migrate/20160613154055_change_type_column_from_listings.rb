class ChangeTypeColumnFromListings < ActiveRecord::Migration
  def change
    rename_column :listings, :type, :join_invite
     
  end
end
