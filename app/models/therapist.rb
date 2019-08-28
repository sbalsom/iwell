class Therapist < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :therapist_specialties
  has_many :specialties, through: :therapist_specialties
  has_many :availabilities, dependent: :destroy
  has_many :bookings
  mount_uploader :photo, PhotoUploader

  # include PgSearch::Model
  # pg_search_scope :global_search,
  #   against: [:first_name, :last_name, :language],
  #   associated_against: {
  #     therapist_specialties: {
  #       specialty: [:name]
  #     }

  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
