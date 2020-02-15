Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :leaders, :subleads]
  resources :teams, only: [:index, :show]
  resources :roles, only: [:index, :show]
end
