class AddSpecialtyIdToTherapistSpecialties < ActiveRecord::Migration[5.2]
  def change
    add_reference :therapist_specialties, :specialty
  end
end
