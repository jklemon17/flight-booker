# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w[ATL PEK DXB LAX ORD LHR HND HKG PVG CDG AMS DFW CAN FRA IST DEL CGK SIN ICN DEN BKK JFK].each do |code|
  Airport.create(abbreviation: code)
end


# create_table "flights", force: :cascade do |t|
#   t.datetime "departure_time"
#   t.datetime "arrival_time"
#   t.float "price"
#   t.integer "departing_airport_id"
#   t.integer "arriving_airport_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end


# for the next 1000 days
date = Date.today
30.times do

    # 100 flights per day
    50.times do

        # NOTE convert to time in hours

        # departure_time = rand(6..18) # flights run from 6am to 6pm
        depart = Time.new(date.year, date.month, date.day, rand(6..18), rand(0..3)*15)

        flight_duration = rand(45..300) # minutes, 5 hours maximum

        arrive = depart + flight_duration * 60


        # NOTE times must be converted to time of day along with the date for each 1000 days.

        # departing_airport = rand(1..22)
        departing_airport = rand(1..5)
        arriving_airport = rand(1..5)
        while arriving_airport == departing_airport do
          arriving_airport = rand(1..5)
        end

        # price = rand(50..1000)

        Flight.create(departure_time: depart,
                      arrival_time: arrive,
                      departing_airport_id: departing_airport,
                      arriving_airport_id: arriving_airport,
                      price: rand(50..1000),
                      date: date)
    end

    date += 1
  end
