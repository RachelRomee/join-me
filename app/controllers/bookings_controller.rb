class BookingsController < ApplicationController

  def create
      listing = Listing.find( params[:listing_id] )
      @booking = Booking.new
      @booking.user = current_user
      @booking.listing = listing

      if @booking.save
        message = "Thanks for your booking!"
      else
        message = "Oh no :( We could not process your booking at this time."
      end

      redirect_to listing, notice: message
   end
end
