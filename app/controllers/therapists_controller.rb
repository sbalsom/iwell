class TherapistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: :show
  def index
    @therapists = policy_scope(Therapist)
  end

  def show
    @therapist = policy_scope(Therapist).find(params[:id])
  end
end
