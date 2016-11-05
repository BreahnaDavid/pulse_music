class HuineaTrack < ActiveRecord::Base
  def self.default_scope
    where.not(preview_url: nil)
  end

  def self.sad(level)
    where("valence < ?", level).
      order(valence: :desc)[0..5]
  end

  def self.happy(level)
    where("danceability < ?", level).
      order(danceability: :desc)[0..5]
  end

  def self.angry(level)
    where("energy < ?", level).
      order(energy: :desc)[0..5]
  end
end
