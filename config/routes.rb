Rails.application.routes.draw do
  get 'sign_in', to: 'sessions#new', as: 'sign_in'
  post 'sign_in', to: 'sessions#create'
  get 'sign_out', to: 'sessions#destroy'
  get 'landing', to: 'pages#landing', as: 'landing'
  resources :projects, only: [:index, :new, :create, :show, :edit, :update] do 
    resources :tasks
  end
  resources :resources, only: [:index, :new, :create, :show, :edit, :update]
  resources :templates, only: [:index, :new, :create, :show, :edit, :update]
  resources :assignments, only: [:new, :create, :show, :edit, :update]
  resources :users, only: [:index, :new, :create, :show, :edit, :update]

  root to: 'home#index'
end
