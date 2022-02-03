class BookingsController < ApplicationController
  def index
    @booking = Bookings.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    #fetches an empty form
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.tree = Tree.find(params[:tree_id])
    @booking.save!
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
end

private
#params id for create method. Tree controller
def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end
