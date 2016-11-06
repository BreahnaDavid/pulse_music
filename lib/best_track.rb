class BestTrack
  def initialize(emotion)
    @emotion = emotion
  end

  def search
    if ['happiness'].include? @emotion
      songs = HuineaTrack.all_happy
      songs[rand(songs.count)]
    elsif ['neutral', 'surprise'].include? @emotion
      songs = HuineaTrack.all
      songs[rand(songs.count)]
    else
      songs = HuineaTrack.all_sad
      songs[rand(songs.count)]
    end
  end
end
