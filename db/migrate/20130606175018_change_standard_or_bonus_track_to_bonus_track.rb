class ChangeStandardOrBonusTrackToBonusTrack < ActiveRecord::Migration
  def change
    rename_column :tracks, :standard_or_bonus_track, :bonus_track
    change_column :tracks, :bonus_track, :boolean
  end
end
