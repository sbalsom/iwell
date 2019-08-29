class Specialty < ApplicationRecord
  has_many :therapist_specialties, dependent: :destroy
  has_many :therapists, through: :therapist_specialties
end
