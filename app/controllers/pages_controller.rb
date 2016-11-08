class PagesController < ApplicationController
  def index
  end

  def track_list
    best_track = ::BestTrack.new(params[:emotion])
    render(
      json: {
        data: best_track.search
      }
    )
  end
end
