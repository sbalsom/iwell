class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @user = current_user
    if @user.therapist_id
      @user_therapist = Therapist.find(@user.therapist_id)
    else
      @user_therapist = nil
    end
    bookings = current_user.bookings
    bookings.sort_by do |booking| booking.starts_at
    @next_bookings = bookings.where("starts_at > ?", Time.now)
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
