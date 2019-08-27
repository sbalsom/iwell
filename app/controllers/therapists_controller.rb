class TherapistsController < ApplicationController
  before_action :set_therapist, only: :show
  skip_before_action :authenticate_user!, only: :show
  def show
    authorize @therapist
  end

  private

  def set_therapist
    @therapist = Therapist.find(params[:id])
  end
end
