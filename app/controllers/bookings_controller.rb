class BookingsController < ApplicationController
  def new
    @campervan = Campervan.find(params[:campervan_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @campervan = Campervan.find(params[:campervan_id])
    @booking.campervan = @campervan
    @booking.user = current_user
    if @booking.save
    redirect_to campervans_path
  else
    render 'campervans/show'
  end
end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
