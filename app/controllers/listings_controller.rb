class ListingsController < ApplicationController

  def index
    @listings = Listing.order(created_at: :asc)
  end

  def new
    @listing = Listing.new
    @listing.user_id = params[:user_id]
  end

  def create
    @listing = Listing.new(listing_params)

    if listing.save
      redirect_to user_path(listing.user_id)
    else
      render 'new'
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update_attributes(listing_params)
      redirect_to @listing
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    user_id = @listing.user_id

    @listing.destroy

    redirect_to user_path(user_path)

  end

  private

  def listing_params
    params.require( :listing ).permit( :title, :content, :join_invite, :city, :date, :user_id, category_ids: [])
  end

end
