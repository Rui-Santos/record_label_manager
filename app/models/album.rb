class Album < ActiveRecord::Base
  attr_accessible :band_id, :name, :recording_type

  validates :name, :band_id, presence: true

  belongs_to :band
  has_many :tracks, dependent: :destroy

  RECORDING_TYPES = ['studio', 'live']

  def self.recording_types
    RECORDING_TYPES
  end

end
