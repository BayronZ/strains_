Rails.application.routes.draw do
  resources :wines
  resources :strains
  root "wines#index"
end
