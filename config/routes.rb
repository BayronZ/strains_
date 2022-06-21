Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :wines
  resources :strains
  root "home#index"
end
