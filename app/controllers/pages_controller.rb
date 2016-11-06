class PagesController < ApplicationController
  helper :headshot

  def index
  end

  def emotion_photo
  end

  def emotion_video
  end

  def track_list
    best_track = BestTrack.new(params[:emotion])
    render(
      json: {
        data: best_track.search
      }
    )
  end
end
