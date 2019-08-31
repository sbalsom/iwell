class ReviewsController < ApplicationController
  before_action :set_therapist, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end


  def create
    @review = Review.new
    @review.user = current_user
    @review.therapist = @therapist
    clarity = params[:rating_c].to_i
    patience = params[:rating_p].to_i
    understanding = params[:rating_u].to_i
    rating = (clarity + patience + understanding) / 3
    @review.rating = rating
    authorize @review
    if @review.save
      redirect_to therapist_path(@therapist)
    else
      render :new
    end
  end
  private

  def half_value(number)
  (number * 2).round / 2.0
  end

  def set_therapist
    @therapist = Therapist.find(params[:therapist_id])
  end
end

  # create_table "reviews", force: :cascade do |t|
  #   t.text "content"
  #   t.integer "rating"
  #   t.bigint "therapist_id"
  #   t.bigint "user_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["therapist_id"], name: "index_reviews_on_therapist_id"
  #   t.index ["user_id"], name: "index_reviews_on_user_id"
  # end\

