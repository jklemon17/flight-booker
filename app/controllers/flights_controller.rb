class FlightsController < ApplicationController
  def index
    # @flights = Flight.all
    @flight = Flight.new
    @departing_airport_options = Airport.all.map { |a| [a.abbreviation, a.id] }
    @arriving_airport_options = Airport.all.map { |a| [a.abbreviation, a.id] }
    @num_options = (1..10).map { |num| [num, num] }

    @flights = Flight.where(departing_airport_id: params[:flight][:departing_airport_id])
                     .where(arriving_airport_id: params[:flight][:arriving_airport_id])
                     .where(date: params[:flight][:date])
  end

end
