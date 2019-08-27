class RemoveTherapistIdFromSpecialties < ActiveRecord::Migration[5.2]
  def change
    # remove_foreign_key :specialties, name: "index_specialties_on_therapist_id"
    remove_column :specialties, :therapist_id

    # remove_foreign_key :notifications, name:
  end
end
