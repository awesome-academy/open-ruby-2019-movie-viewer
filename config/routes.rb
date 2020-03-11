Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users
  devise_for :admins
  resources :films, only: :index
  resources :search_films, only: :index
  resources :films, only: %i(index show)
  post "/rate", to: "rater#create", as: "rate"

  namespace :admins do
    resources :users
    resources :categories, except: :show
    resources :films
  end
end
