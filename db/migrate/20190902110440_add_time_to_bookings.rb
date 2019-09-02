class AddTimeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :time, :time
    change_column :bookings, :starts_at, :date
  end
end
