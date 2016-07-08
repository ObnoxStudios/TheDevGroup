Rails.application.routes.draw do
  devise_for :users
  root'pages#index'
  get '/index' => 'pages#index'
  get '/home' => 'pages#home'
  get '/profile' => 'pages#profile'
  get '/explore' => 'pages#explore'

end
