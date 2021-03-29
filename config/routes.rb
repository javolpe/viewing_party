Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#index"

  # resources :follows
  resources :users, only: [:new, :create]

  get '/login', to: 'users#login_form'
  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

  get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  get '/discover', to: 'discover#index', as: 'discover'

  resources :movies, only: [:index, :show]

  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

end
