class BookingsController < ApplicationController
  def index
    bookings = Bookings.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    #fetches an empty form
    @booking = Booking.new
  end

  def create
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
end

#params id for create method. Tree controller
#def booking_params
    #params.require(:restaurant).permit(:name, :rating, :address)
#end
