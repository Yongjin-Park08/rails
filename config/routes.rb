Rails.application.routes.draw do
  resources :posts
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/posts', to: 'pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
