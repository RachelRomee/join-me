class UsersController < ApplicationController



  def show
    @user = User.find(params[:id])

    #@listing = Listing.find(params[:id])
    @listings = Listing.where(user: @user).order(created_at: :desc)
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
end
