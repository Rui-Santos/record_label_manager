class NotesController < ApplicationController
  def create
    note = Note.create!(params[:note])
    redirect_to track_path(note.track)
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to track_path(note.track)
  end
end
