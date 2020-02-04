class BookingsController < ApplicationController

  def new
    @campervan = Campervan.find(params[:campervan_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @campervan = Campervan.find(params[:campervan_id])
    @booking.campervan = @campervan
    @booking.save
    redirect_to campervan_path(@campervan)
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :campervan_id)
  end
end
