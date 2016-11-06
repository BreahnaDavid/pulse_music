class HuineaTrack < ActiveRecord::Base
  def self.default_scope
    where.not(preview_url: nil)
  end

  def self.sad(level)
    where("valence < ?", 1 - level).
      order(valence: :desc)
  end

  def self.happy(level)
    where("danceability < ?", level).
      order(danceability: :desc)
  end

  def self.angry(level)
    where("energy < ?", level).
      order(energy: :desc)
  end
end
