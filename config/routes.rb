Rails.application.routes.draw do
  post "headshot/capture" => 'headshot#capture', :as => :headshot_capture

  get '/emotion_video' => 'pages#emotion_video', as: :emotion_video
  get '/track_list' => 'pages#track_list', as: :track_list
  get '/' => 'pages#index', as: :root
end
