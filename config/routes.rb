Rails.application.routes.draw do
  root 'home#top'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
  }
  resource :user, except: [:new, :create, :destroy] 
  resources :blogs do
    resource :likes, only: [:create, :destroy]
    resources :reviews, only: [:index, :create]
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end  
end
