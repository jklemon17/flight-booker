class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passenger_count].to_i
    @booking = @flight.bookings.build
    @passengers = []
    @passenger_count.times do
      @passengers << Passenger.new
    end
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
end

private

def booking_params
  params.require(:booking).permit(:flight_id,
                                  :passenger_count,
                                  passengers_attributes: [:first_name,
                                                         :last_name,
                                                         :email])
end
