Rails.application.routes.draw do
  get '/track_list' => 'pages#track_list', as: :track_list
  get '/' => 'pages#index', as: :root
end
