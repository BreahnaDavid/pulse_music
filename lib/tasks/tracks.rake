namespace :tracks do
  desc "TODO"
  task load: :environment do
    tracks_group = SpotifyClient.audio_tracks
    tracks_group.each do |group|
			group.each do |track|
				HuineaTrack.create(track_id: track.id, preview_url: track.preview_url)
			end
    end
  end

  task add_meta: :environment do
    track_ids = HuineaTrack.all.map(&:track_id)
    track_metas = SpotifyClient.audio_features(track_ids)
    track_metas.each do |meta|
      track = HuineaTrack.find_by(track_id: meta.id)
      track.valence = meta.valence
      track.energy = meta.energy
      track.danceability = meta.danceability
      puts track.save
    end
  end
end
