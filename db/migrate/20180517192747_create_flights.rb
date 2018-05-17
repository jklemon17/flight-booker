class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.datetime :departure_time
      t.datetime :arrival_time
      t.float :price
      t.integer :departing_airport_id, foreign_key: true
      t.integer :arriving_airport_id, foreign_key: true

      t.timestamps
    end
  end
end
