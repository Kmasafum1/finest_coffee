Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  resource :user, except: [:new, :create, :destroy] 
  resources :blogs do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end  
end
