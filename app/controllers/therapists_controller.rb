class TherapistsController < ApplicationController
  before_action :set_therapist, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: :show

  def index
    spec_query = "name ILIKE :query"
    @specialties = Specialty.where(spec_query, query: "%#{params[:query]}%")
    specialty_names = @specialties.map do |specialty|
      specialty.name.downcase
      end
    if specialty_names != []
      @therapists = policy_scope(Therapist).get_by_specialty(params[:query])
    else
        sql_query = "
       first_name ILIKE :query \
       OR last_name ILIKE :query \
       OR language ILIKE :query"
    @therapists = policy_scope(Therapist).where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    authorize @therapist
  end

  private

  def set_therapist
    @therapist = Therapist.find(params[:id])
  end
end





