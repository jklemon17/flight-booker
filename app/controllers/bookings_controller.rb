class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight_id]
    @passenger_count = params[:passenger_count]
  end

  def show
  end
end
