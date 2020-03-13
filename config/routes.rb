Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users
  devise_for :admins

  namespace :admins do
    resources :users
    resources :categories, except: :show
    resources :films
  end
end
