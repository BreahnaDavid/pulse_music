Rails.application.routes.draw do
  post "headshot/capture" => 'headshot#capture', :as => :headshot_capture

  get '/emotion_video' => 'pages#emotion_video', as: :emotion_video
  get '/' => 'pages#emotion_photo', as: :root
end
