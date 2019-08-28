class Therapist < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :therapist_specialties
  has_many :specialties, through: :therapist_specialties
  has_many :availabilities, dependent: :destroy
  has_many :bookings
  mount_uploader :photo, PhotoUploader

  def specialties_list
    specialties.map(&:name).join(', ')
  end

  def self.get_by_specialty(params)
    params = params.downcase
    dummy = Therapist.all.filter do |therapist|
      therapist.specialties_list.downcase =~ /#{params}/
    end
    dummy
  end
end
