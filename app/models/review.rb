class Review < ApplicationRecord
  belongs_to :therapist
  belongs_to :user
end
