class ReviewsController < ApplicationController
  before_action :set_therapist, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end


  def create
    @review = Review.new(review_params)
    @review.therapist = @therapist
    if @review.save
      redirect_to therapist_path(@therapist)
    else
      render :new
    end
  end

  private

  def set_therapist
    @therapist = Therapist.find(params[:therapist_id])
  end
end
