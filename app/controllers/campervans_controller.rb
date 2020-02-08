class CampervansController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @campervans = Campervan.all
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
