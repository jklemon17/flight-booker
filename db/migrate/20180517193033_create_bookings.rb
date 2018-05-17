class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :num_passengers
      t.integer :flight_id, foreign_key: true

      t.timestamps
    end
  end
end
