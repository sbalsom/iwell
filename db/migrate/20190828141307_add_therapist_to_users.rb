class AddTherapistToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :therapist
  end
end
