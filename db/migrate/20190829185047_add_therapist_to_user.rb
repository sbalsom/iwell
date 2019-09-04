class AddTherapistToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :therapist, foreign_key: true
  end
end
