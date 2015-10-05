class AddFareIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :fare_id, :integer
  end
end
