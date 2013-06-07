class Track < ActiveRecord::Base
  attr_accessible :album_id, :lyrics, :name, :bonus_track, :song_id

  validates :name, :album_id, presence: true

  belongs_to :album
  belongs_to :song
end
