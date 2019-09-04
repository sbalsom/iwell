class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @user = current_user
    if @user.therapist_id
     @user_therapist = @user.therapist
   else
    @user_therapist = nil
    end
    @today_booking = Booking.where(
      "starts_at > ? AND starts_at < ?",
      Time.now.beginning_of_day,
      Time.now.end_of_day
    ).first
    @bookings = current_user.bookings
    @next_booking = @bookings.where("starts_at > ?", Time.now.end_of_day)
    @past_bookings = @bookings.where("starts_at < ?", Time.now.beginning_of_day)
    #bookings.sort_by do |booking| booking.starts_at

   # @booking_therapists = bookings.map do |booking|
    #  Therapist.find(booking.therapist_id)
    if current_user.therapist_id
      @my_therapist = Therapist.find(current_user.therapist_id)
    end
  end
end
