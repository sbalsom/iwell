class TherapistsController < ApplicationController
  before_action :set_therapist, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: :show

  def index
    @specialties = Specialty.all
    @therapists = policy_scope(Therapist)
    @therapists = @therapists.joins(therapist_specialties: :specialty).where('specialties.name ILIKE ?', "%#{params[:specialty]}%") if params[:specialty].present?
    @therapists = @therapists.where(language: params[:language]) if params[:language].present?
    sql_query = "
       first_name ILIKE :query \
       OR last_name ILIKE :query \
       OR language ILIKE :query \
       OR specialties.name ILIKE :query"
    @therapists = @therapists.joins(therapist_specialties: :specialty).where(sql_query, query: "%#{params[:query]}%") if params[:query].present?
    @therapists = @therapists.where(years_exp: params[:years_exp].to_i..10) if params[:years_exp].present?
    @therapists = @therapists.where(rate: 0..params[:rate].to_i) if params[:rate].present?
    @therapists = @therapists.where(avg_rating: params[:avg_rating].to_i..5.0) if params[:avg_rating].present?


  end

  def show
    @booking = Booking.new
    authorize @therapist
  end

  private

  def set_therapist
    @therapist = Therapist.find(params[:id])
  end
end





