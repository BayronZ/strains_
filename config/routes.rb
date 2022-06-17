Rails.application.routes.draw do
  get 'home/index'
  resources :wines
  resources :strains
  root "home#index"
end
