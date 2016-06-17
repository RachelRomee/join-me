class ListingsController < ApplicationController
  load_and_authorize_resource

  def index
    @listings = Listing.order(created_at: :desc)
  end

  def new
    @listing = Listing.new
    @listing.user_id = params[:user_id]
  end

  def create
    if @listing.save
      redirect_to listings_path#(listing.user_id)
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

    redirect_to listings_path(listings_path)

  end

  def user
    @user = User.find( params[:user_id] )
    authorize! :read, @user

    @listings = Listing.where( user: @user ).order( created_at: :desc )
    authorize! :read, @listings

  #  @likes = @user.likes.joins( :post ).order( "posts.created_at DESC" )

  end


  private

  def listing_params
    params.require( :listing ).permit( :title, :content, :join_invite, :city, :date, :user_id, category_ids: [])
  end

end
