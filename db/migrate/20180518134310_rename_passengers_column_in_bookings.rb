class RenamePassengersColumnInBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :num_passengers, :passenger_count
  end
end
