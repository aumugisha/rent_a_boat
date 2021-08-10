class BookingsController < ApplicationController
before_action :set_boat

  def index
    @bookings = Booking.all
  end


  def new
  @booking = Booking.new()
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat = @boat
    

    redirect_to boat_bookings_path(@boat)
  end

  def index
    @bookings = Booking.all(params[:user_id])
  end

  def show
    @booking = Booking(params[:id])
  end
  
  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date )
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])  
  end

end

