Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :users, param: :slug
      resources :posts, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
    end
  end
  
end
