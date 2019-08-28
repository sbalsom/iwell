class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @bookings = current_user.bookings
    @booking_therapists = @bookings.map do |booking|
      Therapist.find(booking.therapist_id)
    end

    if current_user.therapist_id
      @my_therapist = Therapist.find(current_user.therapist_id)
    end

  end
end
