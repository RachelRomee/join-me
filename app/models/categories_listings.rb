class CategoriesListings < ActiveRecord::Base
  belongs_to :categories
  belongs_to :linstings
end
