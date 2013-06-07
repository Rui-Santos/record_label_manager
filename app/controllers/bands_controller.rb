class BandsController < ApplicationController
  def new
    render :new
  end

  def create
    band = Band.create!(params[:band])
    redirect_to band_url(band)
  end

  def index
    @bands = Band.all
    render :index
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def edit
    render :edit
  end

  def update
    band = Band.find(params[:id])
    band.update_attributes(params[:band])
    redirect_to band_url(band)
  end

  def destroy
    Band.find(params[:id]).destroy
    redirect_to bands_url
  end

end
