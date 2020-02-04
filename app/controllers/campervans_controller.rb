class CampervansController < ApplicationController
  def index
    @campervans = Campervan.all
  end

  def new
    @campervan = Campervan.new
  end

  def create
    @campervan = Campervan.new(campervan_params)
    if @campervan.save
      redirect_to campervan_path(@campervan)
    else
      render :new
    end
  end

  def show
    @campervan = campervan.find(params[:id])
  end

  def update
    @campervan = Campervan.find(params[:id])
    @campervan.update(campervan params)
  end

  def destroy
    @campervan = Campervan.find(params[:id])
    @campervan.destroy
    redirect_to campervans_path
  end

  private

  def campervan_params
    params.require(:campervan).permit(:name)
  end
end

