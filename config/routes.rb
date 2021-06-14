Rails.application.routes.draw do  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'new', to: 'users#new'
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'home#index'
resources :users, only: %i[new create]
resources :boards
resources :comments, only: [:create,:destroy]
end
