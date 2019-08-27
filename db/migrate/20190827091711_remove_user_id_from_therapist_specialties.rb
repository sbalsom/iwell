class RemoveUserIdFromTherapistSpecialties < ActiveRecord::Migration[5.2]
  def change
    remove_column :therapist_specialties, :user_id
  end
end
