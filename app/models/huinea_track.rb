class HuineaTrack < ActiveRecord::Base
  def self.default_scope
    where.not(preview_url: nil)
  end

  # maybe less danceability - nvm
  # BY DANCING SORT
  # REAL - HAPPY -> energy - 0.862 | valence -> 0.328
  # REAL - HAPPY -> energy - 0.662 | valence -> 0.328
  # SLOW BAD ->  energy -> 0.665, valence -> 0.645
  # REAL - HAPPY -> energy - 0.577 | valence -> 0.677
  # SLOW BAD ->  energy -> 0.586, valence -> 0.428
  #
  #
  # BY VALENCE
  # HAPPY -> danceability 0.75, energy: 075, valence: 0.9
  # HAPPY -> danceability 0.66, energy: 058, valence: 0.9
  # HAPPY -> danceability 0.66, energy: 070, valence: 0.89
  # HAPPY -> danceability 0.66, energy: 078, valence: 0.88
  # HAPPY -> danceability 0.64, energy: 079, valence: 0.81
  # MIN - HAPPY -> danceability 0.64, energy: 079, valence: 0.81
  #
  def self.all_happy
    where("valence > 0.85 OR energy > 0.85")
  end

  def self.all_sad
    where("energy < 0.5")
  end
end
