class ReviewsController < ApplicationController
  # before_action :set_review
  before_action :set_campervan
  def new
    # @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @campervan = Campervan.find(params[:campervan_id])
    @review = Review.new(review_params)
    @review.campervan = @campervan
    @review.user = current_user
    if @review.save
      redirect_to campervans_path
    else
      render "booking_reviews"
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
    #  def set_review
    #   @review = Review.find(params[:id])
    # end

    def set_campervan
      @campervan = Campervan.find(params[:campervan_id])
    end

  # def set_campervan_review
  #   @campervan = Campervan.find(params[:campervan_id])
  # end
end
