class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name_of_passenger
      t.integer :no_of_travellers
      t.integer :no_of_child
      t.time :time_of_travel

      t.timestamps null: false
    end
  end
end
