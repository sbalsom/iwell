class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :therapist, foreign_key: true
      t.datetime :starts_at
      t.boolean :free
      t.integer :price
      t.integer :status

      t.timestamps
    end
  end
end
