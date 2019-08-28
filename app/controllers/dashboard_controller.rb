class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @bookings = current_user.bookings
  end
end
