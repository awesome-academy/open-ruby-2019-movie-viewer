Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users
  devise_for :admins
  resources :films
  
  namespace :admins do
    resources :users
    resources :categories, except: :show
    resources :films
  end
end
