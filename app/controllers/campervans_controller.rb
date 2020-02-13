class CampervansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @campervans = Campervan.geocoded

    @markers = @campervans.map do |campervan|
      {
        lat: campervan.latitude,
        lng: campervan.longitude
      }
    end

    if params[:query].present?
      @campervans = Campervan.where(title: params[:query])
    elsif @campervans == Campervan.where(description: params[:query])
    else
      @campervans = Campervan.all
    end

  end

  def new
    @campervan = Campervan.new
    @review = Review.new
  end

  def create
    @campervan = Campervan.new(campervan_params)

    @campervan.user = current_user
    if @campervan.save
      redirect_to campervan_path(@campervan)
    else
      render :new
    end
  end

  def edit
    @campervan = Campervan.find(params[:id])
  end

  def show
    @booking = Booking.new
    @campervan = Campervan.find(params[:id])
    @bookings = Booking.where(campervan: @campervan, user: current_user)
    @review = Review.new
  end

  def update
    @campervan = Campervan.find(params[:id])
    @campervan.update(campervan_params)
  end

  def destroy
    @campervan = Campervan.find(params[:id])
    @campervan.destroy
    redirect_to campervans_path
  end

  private

  def campervan_params
    params.require(:campervan).permit(:title, :description, :address, :price, :photo, :user_id)
  end
end
