# t.bigint "user_id"
# t.bigint "therapist_id"
# t.datetime "starts_at"
# t.boolean "free"
# t.integer "price"
# t.integer "status"

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :therapist
  
  enum status: [:pending, :accepted, :rejected]
end
