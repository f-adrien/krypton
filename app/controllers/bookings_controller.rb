class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @incoming_bookings = current_user.incoming_bookings
  end

  def new
    @superhero = Superhero.find(params[:superhero_id])
    @booking = Booking.new
  end

  def create
    @superhero = Superhero.find(params[:superhero_id])
    @booking = Booking.new(strong_params_booking)
    @booking.user = current_user
    @booking.superhero = @superhero
    if @booking.save
      redirect_to bookings_path
    else
      render "superheros/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def strong_params_booking
    params.require(:booking).permit(:start_date, :end_date, :superhero_id)
  end
end
