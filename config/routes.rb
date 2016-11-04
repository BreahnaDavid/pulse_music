Rails.application.routes.draw do
  get '/' => 'pages#index', as: :root
end
