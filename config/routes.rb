Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/leaders', to: 'users#leaders'
  get '/users/sub-leaders', to: 'users#sub_leaders'
  resources :users, only: [:show, :index] do
    member do
      get :articles
    end
  end
  resources :teams, only: [:show, :index] do
    member do
      get :members
    end
  end
  resources :articles, only: [:show, :index]
end
