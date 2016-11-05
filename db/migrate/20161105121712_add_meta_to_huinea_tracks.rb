class AddMetaToHuineaTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :huinea_tracks, :valence, :decimal
    add_column :huinea_tracks, :danceability, :decimal
    add_column :huinea_tracks, :energy, :decimal
  end
end
