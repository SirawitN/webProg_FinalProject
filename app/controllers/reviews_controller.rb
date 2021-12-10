class ReviewsController < ApplicationController
  include MainConcern

  before_action :is_logged_in_user, only: %i[ new edit ]
  before_action :set_review, only: %i[ show edit update destroy ]

  # GET /reviews or /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1 or /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    user = User.find(params[:review][:user_id])
    store = Store.find(params[:review][:store_id])
    score = params[:review][:score]
    comment = params[:review][:comment]

    @review = Review.find_or_initialize_custom(user, store, score, comment) #<<-----------

    if @review.check_user_with_store(user, store)
      respond_to do |format|
        if @review.save
          format.html { redirect_to store_path(store), notice: "Review was successfully created." }
          format.json { render :show, status: :created, location: @review }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @review.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to store_path(params[:review][:store_id]), alert: "Please purchase some products from the store before making reviews."
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: "Review was successfully updated." }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: "Review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:user_id, :store_id, :score, :comment)
    end
end
