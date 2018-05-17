class Airport < ApplicationRecord
  has_many :departing_flights, class_name: "Flight"
  has_many :arriving_flights, class_name: "Flight" 
end
