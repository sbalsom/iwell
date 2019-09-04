class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @user = current_user
    if !@user.therapist_id.nil?
      @user_therapist = Therapist.find(@user.therapist_id)
    end
    if @user.therapist_id
     @user_therapist = @user.therapist
   else
    @user_therapist = nil
    end
    @today_booking = Booking.where(["starts_at = ? and status <> ?", Date.today, 3]).last
    # AND not status:completed
    @bookings = current_user.bookings
    @next_booking = @bookings.where("starts_at > ?", Date.today)
    @past_bookings = @bookings.where(["starts_at < ? or status = ? ", Date.today, 3])
    # OR status: completed

    if current_user.therapist_id
      @my_therapist = Therapist.find(current_user.therapist_id)
    end
  end
end
