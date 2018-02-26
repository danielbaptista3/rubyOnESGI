Rails.application.routes.draw do
  resources :producteurs
  devise_for :utilisateurs
  resources :personnages
  resources :episodes
  resources :animes
  resources :studio
  resources :tag
  resources :genre
  resources :auteur

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Commontator::Engine => '/commontator'

  root to: "home#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
