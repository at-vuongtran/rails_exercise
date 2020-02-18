Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index]
  # get 'users/leaders'
  # get 'users/sub-leaders'
  namespace :users do
    resources :leaders do
      member do
        get :members
      end
    end
    resources :sub_leaders do
      member do
        get :members
      end
    end
  end
  resources :teams
end
