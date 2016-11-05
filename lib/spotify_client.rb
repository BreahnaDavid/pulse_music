class SpotifyClient
  def self.audio_tracks
    x = [
			['gamesover','5lErlJaSFNJ0ffcanZUAYl'],
			['wowilovechristianmusic', '6ghg2DZuzEE8s4IfyxTyxE'],
			['wowilovechristianmusic', '1SYv9UJFAbHou1X1vYHgM4'],
			['tatster', '4K9m6uMLfdH7KOBzO0MmQz'],
			['saevik', '4OhEIT3SXjGF5msyintUWU']
    ]
    RSpotify.authenticate('e30eb889fe964d6e9f125f5ca2912143', '0cda293abc524b2d95726eb88670aece')
    x.map do |y|
			RSpotify::Playlist.find(y[0], y[1]).
				tracks
		end
  end

	def self.audio_features(ids)
    RSpotify.authenticate('e30eb889fe964d6e9f125f5ca2912143', '0cda293abc524b2d95726eb88670aece')
    ids.map do |id|
      RSpotify::AudioFeatures.find(id)
    end
	end
end
