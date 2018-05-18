class AddBookingIdtoPassengersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :passengers, :booking_id, :integer, foreign_key: true
  end
end
