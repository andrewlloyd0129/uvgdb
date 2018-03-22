Rails.application.routes.draw do

  namespace :user do
    get 'dashboard/profile'
    get 'dashboard/admin'
  end


  resources :people
  resources :platforms
  resources :characters
  resources :studios
  resources :games
  
  devise_for :users



  get 'pages/home'

  get 'pages/hiBrayden'

  root to: "pages#home"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
