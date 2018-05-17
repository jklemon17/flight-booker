class Airport < ApplicationRecord
  has_many :departing_flights
  has_many :arriving_flights
end
