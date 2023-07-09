Rails.application.routes.draw do
<<<<<<< HEAD
  resources :posts
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/posts', to: 'pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
=======
  get 'pages', to: 'home#pages'
  get 'about', to: 'home#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
>>>>>>> origin/main
end
