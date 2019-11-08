Rails.application.routes.draw do
  resources :rushings, only: [:index]
  root to: "rushings#index"
end
