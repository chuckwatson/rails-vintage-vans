class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :campervan, foreign_key: true
      t.boolean :booked, default: false

      t.timestamps
    end
  end
end
