Rails.application.routes.draw do
  resources :posts
  resources :visit_requests
  resources :visits
  devise_for :users
  resources :home
  resources :admin
  resources :tour
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
