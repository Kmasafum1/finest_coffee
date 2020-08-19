Rails.application.routes.draw do
  root 'blogs#index'
  devise_for :users
  resource :user, except: [:new, :create, :destroy] 
  resources :blogs do
    collection do
      get 'search'
    end
  end  
end
