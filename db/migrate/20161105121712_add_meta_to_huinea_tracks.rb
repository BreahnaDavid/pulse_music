class AddMetaToHuineaTracks < ActiveRecord::Migration
  def change
    add_column :huinea_tracks, :acousticness, :float
    add_column :huinea_tracks, :danceability, :float
    add_column :huinea_tracks, :energy, :float
    add_column :huinea_tracks, :instrumentalness, :float
    add_column :huinea_tracks, :liveness, :float
    add_column :huinea_tracks, :speechiness, :float
    add_column :huinea_tracks, :valence, :float
  end
end
