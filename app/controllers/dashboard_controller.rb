class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @user = current_user
    if @user.therapist_id
      @user_therapist = Therapist.find(@user.therapist_id)
    else
      @user_therapist = nil
    end

    @todays_booking = Booking.where(starts_at: Date.today)
    @next_bookings = current_user.bookings.where("starts_at > ?", Date.today)
    @past_bookings = current_user.bookings.where("starts_at < ?", Date.today)
    # @booking_therapists = bookings.map do |booking|
    #   Therapist.find(booking.therapist_id)
    # end
  end
    if current_user.therapist_id
      @my_therapist = Therapist.find(current_user.therapist_id)
    end
  end
end
