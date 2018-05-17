class Flight < ApplicationRecord
  belongs_to :departing_airport
  belongs_to :arriving_airport
  has_many :bookings
  has_many :passengers, through: :bookings
end
