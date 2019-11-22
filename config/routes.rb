Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :rushings, only: [:index]
  root to: "rushings#index"
end
