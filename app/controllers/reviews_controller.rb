class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render "booking_reviews"
    end
  end

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end
