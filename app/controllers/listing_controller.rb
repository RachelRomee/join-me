class ListingController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
    @listing.user_id = params[:user_id]
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

# EXAMPLE FROM AUTHOR PROJECT
#   def novel_params
#   params.require( :novel ).permit( :title, :year, :cover, :plot, :author_id, genre_ids: [] )
# end

end
