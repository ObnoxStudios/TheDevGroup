Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root'pages#index'
  get '/index' => 'pages#index'
  get '/home' => 'pages#home'
  get '/user/:id' => 'pages#profile'
  get '/explore' => 'pages#explore'
  get '/help' => 'pages#help'
  get '/users' => 'pages#User'

end
