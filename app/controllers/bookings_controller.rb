class BookingsController < ApplicationController
  skip_after_action :verify_authorized, only: :show

  def show
    @booking = Booking.find(params[:id])
  end

def create
  @booking = Booking.new(booking_params)
  @booking.status = 0
  @therapist = Therapist.find(params[:therapist_id])
  @booking.therapist = @therapist
  @booking.user = current_user
  authorize @booking
  if booking_params[:free] == "Free consultation (15 min)"
    @booking.free = true
  else
    @booking.free = false
  end
  if @booking.save
    redirect_to booking_path(@booking)
  else
    render 'therapists/show'
  end
end

def edit
  @therapist = Therapist.find(params[:therapist_id])
  @booking = Booking.find(params[:id])
  authorize @booking
end

def update
  @booking = Booking.new(booking_params)
  @booking.update
end

def destroy
  @booking = Booking.find(params[:id])
  authorize @booking
  @booking.destroy
  redirect_to dashboard_path
end

private

  def booking_params
    params.require(:booking).permit(:free, :therapist_id, :starts_at)
  end
end
