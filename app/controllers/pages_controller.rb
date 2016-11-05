class PagesController < ApplicationController
  helper :headshot

  def emotion_photo
  end

  def emotion_video
  end

  def track_list
    data = HuineaTrack.happy(params[:level])
    render(
      json: {
        data: data
      }
    )
  end
end
