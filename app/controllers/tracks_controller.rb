class TracksController < ApplicationController
  def new
    @songs = Song.all
    @albums = Album.all
    render :new
  end

  def create
    track = Track.create!(params[:track])
    redirect_to track_url(track)
  end

  def index
    @tracks = Track.all
    render :index
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end

  def edit
    render :edit
  end

  def update
    track = Track.find(params[:id])
    track.update_attributes(params[:track])
    redirect_to track_url(track)
  end

  def destroy
    Track.find(params[:id]).destroy
    redirect_to tracks_url
  end

end
