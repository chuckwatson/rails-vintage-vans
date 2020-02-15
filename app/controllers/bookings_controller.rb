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
      redirect_to campervan_booking_path(@campervan, @booking)
    else
      render 'campervans/show'
    end
  end

 def index
    @user = current_user
    @bookings = @user.bookings
end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
