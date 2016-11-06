class PagesController < ApplicationController
  helper :headshot

  def index
  end

  def emotion_photo
  end

  def emotion_video
  end

  def track_list
    data = HuineaTrack.send(track_type, params[:level].to_f / 100)
    render(
      json: {
        data: data.first
      }
    )
  end

  private

  def track_type
    emotion = params[:emotion]
    if ['neutral', 'surprise', 'happiness'].include? emotion
      'happy'
    elsif ['sadness', 'fear'].include? emotion
      'sad'
    else
      'angry'
    end
  end
end
