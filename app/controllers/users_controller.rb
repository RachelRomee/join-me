class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def listing
    @user = User.find(params[:user_id])
    authorize! :read, @user

    @listings = Listing.where(user: @user).order(created_at: :desc)
    authorize! :read, @posts

    # @bookings = @user.likes.joins(:post).order("posts.created_at DESC")
    # authorize! :read, @likes
  end
end
