Rails.application.routes.draw do
  root 'blogs#index'
  devise_for :users
  resource :user, except: [:new, :create, :destroy]
end
