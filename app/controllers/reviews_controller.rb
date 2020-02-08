class ReviewsController < ApplicationController
  before_action :set_review
  def new
    # @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to campervan_path(@booking.campervan)
    else
      render "booking_reviews"
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

  def set_review
    @booking = Booking.find(params[:booking_id])
  end
end
