class ListingsController < ApplicationController
  load_and_authorize_resource

  def index
    @listings = @listings.order(created_at: :desc)
  end

  def new
  end

  def create
    @listing.user = current_user
    if @listing.save
      redirect_to listings_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @listing.update_attributes(listing_params)
      redirect_to @listing
    else
      render 'edit'
    end
  end

  def destroy
    if @listing.destroy
      redirect_to listings_path, notice: "Whoop! That listing is gone!"
    else
      redirect_to @listing, notice: "Sorry! Could not destroy this listing!"
    end
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
    params.require(:listing).permit( :title, :content, :join_invite, :city, :date, :user_id, category_ids: [])
  end

end
