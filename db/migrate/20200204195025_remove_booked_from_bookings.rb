class RemoveBookedFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booked, :boolean
  end
end
