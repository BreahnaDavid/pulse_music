class HuineaTrack < ActiveRecord::Migration[5.0]
  def change
    create_table :huinea_tracks do |t|
      t.string :track_id
      t.string :preview_url
    end
  end
end
