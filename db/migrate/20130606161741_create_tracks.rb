class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :standard_or_bonus_track
      t.integer :album_id
      t.text :lyrics

      t.timestamps
    end
  end
end
