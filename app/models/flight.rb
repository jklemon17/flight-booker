class Flight < ApplicationRecord
  belongs_to :departing_airport, class_name: "Airport"
  belongs_to :arriving_airport, class_name: "Airport"
  has_many :bookings
  # has_many :passengers, through: :bookings
  accepts_nested_attributes_for :bookings

  default_scope -> { order(departure_time: :asc) }
end
