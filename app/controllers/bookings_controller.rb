d 
class BookingsController < ApplicationController
  def new
  @booking = Booking.new
  end
​
  def create
    @booking = Booking.new(params[:id])
    @booking.save
​
    redirect_to booking_path(@booking)
  end

  def index
    @bookings = Booking.all(params[:user_id])
  end
  
​
  def show
    @booking = Booking(params[:id])
  end
​
​
​
​
  private
  def booking_params
    params.require(:booking).permit(:name, :address, :rating)
  end
end