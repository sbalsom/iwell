class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :therapist
  enum status: [:pending, :accepted, :rejected]
end
