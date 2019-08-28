class TherapistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: :show

  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query \
      OR last_name ILIKE :query \
      OR language ILIKE :query"
      @therapists = policy_scope(Therapist).where(sql_query, query: "%#{params[:query]}%")
    else
    @therapists = policy_scope(Therapist)
  end
  end



  def show
    @therapist = policy_scope(Therapist).find(params[:id])
  end
end
