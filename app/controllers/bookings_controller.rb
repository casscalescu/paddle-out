class BookingsController < ApplicationController
  def new
    @surfboard = Surfboard.find(params[:surfboard_id])
    @booking = Booking.new
    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.total_price = calculate_total_price(@booking) if @booking.valid?
    if @booking.save
      redirect_to bookings_path
    else
      @surfboard = @booking.surfboard
      render 'bookings/new'
    end
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
    @user = current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :surfboard_id)
  end

  def calculate_total_price(booking)
    @surfboard = booking.surfboard
    ((booking.end_date - booking.start_date) * surfboard.price).round(2)
  end
end
