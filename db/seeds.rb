# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# remote_url_photo: 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'


require 'faker'

puts "checking if you are in development mode"
if Rails.env.development?
  puts "wiping the database "
  Therapist.destroy_all
  Booking.destroy_all
  Specialty.destroy_all
  Specialty.destroy_all
  User.destroy_all
  puts "current stats :"
  puts "Therapists: #{Therapist.count}"
  puts "Availabilities: #{Availability.count}"
  puts "Bookings: #{Booking.count}"
  puts "Reviews: #{Review.count}"
  puts "Specialties: #{Specialty.count}"
  puts "Therapist specialty tags: #{TherapistSpecialty.count}"
  puts "Users: #{User.count}"
else
  puts "you are not in development mode !"
end

puts "creating fake users"

rndr = Random.new

10.times do
  User.create!(
    email: "#{rndr.rand(0..5)}#{rndr.rand(0..5)}#{rndr.rand(0..5)}#{rndr.rand(0..5)}@example.com",
    password: "123456"
  )
end

puts "#{User.count} users created"

puts "creating therapists"

def half_value(number)
  (number * 2).round / 2.0
end

10.times do
  Therapist.create!(
    first_name: Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    avg_rating: half_value(rndr.rand(1.0..5.0)),
    language: Faker::Nation.language,
    bio: (Faker::Marketing.buzzwords)*15,
    years_exp: rndr.rand(1..5)
    )
end

puts "#{Therapist.count} therapists created"

#   create_table "therapists", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "avg_rating"
#     t.string "language"
#     t.text "bio"
#     t.string "photo"
#     t.integer "years_exp"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end


# create_table "availabilities", force: :cascade do |t|
#     t.integer "week_day"
#     t.time "start_time"
#     t.time "end_time"
#     t.bigint "therapist_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["therapist_id"], name: "index_availabilities_on_therapist_id"
#   end

#   create_table "bookings", force: :cascade do |t|
#     t.bigint "user_id"
#     t.bigint "therapist_id"
#     t.datetime "starts_at"
#     t.boolean "free"
#     t.integer "price"
#     t.integer "status"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["therapist_id"], name: "index_bookings_on_therapist_id"
#     t.index ["user_id"], name: "index_bookings_on_user_id"
#   end

#   create_table "reviews", force: :cascade do |t|
#     t.text "content"
#     t.integer "rating"
#     t.bigint "therapist_id"
#     t.bigint "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["therapist_id"], name: "index_reviews_on_therapist_id"
#     t.index ["user_id"], name: "index_reviews_on_user_id"
#   end

#   create_table "specialties", force: :cascade do |t|
#     t.string "name"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "therapist_specialties", force: :cascade do |t|
#     t.bigint "therapist_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.bigint "specialty_id"
#     t.index ["specialty_id"], name: "index_therapist_specialties_on_specialty_id"
#     t.index ["therapist_id"], name: "index_therapist_specialties_on_therapist_id"
#   end

#   create_table "therapists", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "avg_rating"
#     t.string "language"
#     t.text "bio"
#     t.string "photo"
#     t.integer "years_exp"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "email", default: "", null: false
#     t.string "encrypted_password", default: "", null: false
#     t.string "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["email"], name: "index_users_on_email", unique: true
#     t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   end

#   add_foreign_key "availabilities", "therapists"
#   add_foreign_key "bookings", "therapists"
#   add_foreign_key "bookings", "users"
#   add_foreign_key "reviews", "therapists"
#   add_foreign_key "reviews", "users"
#   add_foreign_key "therapist_specialties", "therapists"
# end
