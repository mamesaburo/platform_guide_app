Rails.application.routes.draw do
  root to: 'homes#top'
  resources :stations, only: [:index, :show]
end
