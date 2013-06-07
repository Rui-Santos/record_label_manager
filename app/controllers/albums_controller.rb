class AlbumsController < ApplicationController
  def new
    @album = Album.new # Not actually saved; makes fields populate empty
    @bands = Band.all
    @recording_types = Album.recording_types
    render :new
  end

  def create
    album = Album.create!(params[:album])
    redirect_to album_url(album)
  end

  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def edit
    @album = Album.find(params[:id])
    @bands = Band.all
    @recording_types = Album.recording_types
    render :edit
  end

  def update
    album = Album.find(params[:id])
    album.update_attributes(params[:album])
    redirect_to album_url(album)
  end

  def destroy
    album = Album.find(params[:id])
    album.destroy
    redirect_to band_url(album.band)
  end

end
