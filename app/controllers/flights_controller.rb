class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @departing_airport_options = @flights
    @arriving_airport_options = @flights
  end


end
