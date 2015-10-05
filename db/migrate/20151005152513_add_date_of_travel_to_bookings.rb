class AddDateOfTravelToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :date_of_travel, :datetime
  end
end
