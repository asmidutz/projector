Rails.application.routes.draw do
  resources :projects, only: [:index]
  resources :templates, only: [:index]
  #controller & Method
 root to: 'home#index'
end
