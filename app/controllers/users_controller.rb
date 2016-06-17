class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def listing
    #@user = User.find(params[:id])
    #authorize! :read, @user

    @listings = Listing.where(listing_id: @user).order(created_at: :desc)
    authorize! :read, @posts

    # @bookings = @user.likes.joins(:post).order("posts.created_at DESC")
    # authorize! :read, @likes
  end

def user_params
params.require(:user).permit(:name, :email, :gender, :age, :city, :description, :photo)
end
end
