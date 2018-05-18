class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passenger_count].to_i
    @booking = @flight.bookings.build
  end

  def create
    @booking = Booking.new(params[:booking][:flight_id],params[:booking][:passenger_count])

    if @booking.save
      @booking.passenger_count.times do
        passenger = Passenger.new
      end

      redirect_to @booking
    else

    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
