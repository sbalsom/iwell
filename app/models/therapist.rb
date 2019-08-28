class Therapist < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :therapist_specialties
  has_many :specialties, through: :therapist_specialties
  has_many :availabilities, dependent: :destroy
  has_many :bookings
  has_many :users

  mount_uploader :photo, PhotoUploader
end
