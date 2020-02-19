Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
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
        get :reviews
      end
    end
  end
  resources :teams do
    member do
      get :members
    end
  end
end
