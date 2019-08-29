class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    bookings = current_user.bookings
    bookings.sort_by do |booking| booking.starts_at
    @next_booking = bookings.where("starts_at > ?", Time.now)
    @past_bookings = bookings.where("starts_at < ?", Time.now)
    @booking_therapists = bookings.map do |booking|
      Therapist.find(booking.therapist_id)
    end
  end
    if current_user.therapist_id
      @my_therapist = Therapist.find(current_user.therapist_id)
    end
  end
end
