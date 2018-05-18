class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passenger_count].to_i
    @booking = @flight.bookings.build
  end

  def create
  end

  def show
  end
end
