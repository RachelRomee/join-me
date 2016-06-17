class UsersController < ApplicationController
  def show
    @user = User.includes(:listings).find(params[:id])
  end

  def listing
    #@user = User.find(params[:id])
    #authorize! :read, @user
    @listing = Listing.all
    @listings = Listing.where(user: @user).order(created_at: :desc)
    authorize! :read, @listings

    # @bookings = @user.likes.joins(:post).order("posts.created_at DESC")
    # authorize! :read, @likes
  end

  def booking
    @bookings = @user.bookings.joins( :listing ).order("posts.created_at DESC")
  end
end
