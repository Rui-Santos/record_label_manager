class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    song = Song.create!(params[:song])
    redirect_to song_path(song)
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
