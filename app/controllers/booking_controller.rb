class BookingController < ApplicationController

  def create
      listing = Listing.find( params[:listing_id] )
      booking = Booking.new( listing: listing, user: current_user )

      booking.save

      redirect_to listings_path
   end
end
