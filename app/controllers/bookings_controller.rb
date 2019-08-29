class BookingsController < ApplicationController

def create
  @booking = Booking.new(booking_params)
  @booking.status = 0
  @therapist = Therapist.find(params[:therapist_id])
  @booking.therapist = @therapist
  @booking.user = current_user
  authorize @booking
  # raise
  if booking_params[:free] == "Free consultation (15 min)"
    @booking.free = true
  else
    @booking.free = false
  end
  if @booking.save
    raise
    #call the javascript function
  else
    render 'therapists/show'
  end
end

private

def booking_params
  params.require(:booking).permit(:free, :therapist_id, :starts_at)

end

end

# params[:starts_at]
# params[:free]
