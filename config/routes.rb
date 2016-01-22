Rails.application.routes.draw do
  resources :projects, only: [:index]
  #controller & Method
 root to: 'home#index'
end
