class FlightsController < ApplicationController
  def index
    # @flights = Flight.all
    @flight = Flight.new
    @departing_airport_options = Airport.all.map { |a| [a.abbreviation, a.id] }
    @arriving_airport_options = Airport.all.map { |a| [a.abbreviation, a.id] }
    # add a blank destination as the first option
    @departing_airport_options.unshift(["-", 0])
    @arriving_airport_options.unshift(["-", 0])

    @num_options = (1..10).map { |num| [num, num] }

    if params[:flight].nil?
      @flights = []

    else
      @flights = Flight.where(departing_airport_id: params[:flight][:departing_airport_id])
                      .where(arriving_airport_id: params[:flight][:arriving_airport_id])
                      .where(date: params[:flight][:date])
    end

  end
end
