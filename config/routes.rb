Rails.application.routes.draw do

  namespace :user do
    get 'dashboard/profile'
    get 'dashboard/admin'
  end


  resources :people
  resources :platforms
  resources :characters
  resources :studios
  resources :games do
    member do
      put "favorite" => "games#favorite"
      put "unfavorite" => "games#unfavorite"
      put "like" => "games#like"
      put "unlike" => "games#unlike"
      put "dislike" => "games#dislike"
      put "undislike" => "games#undislike"
    end
  end
  
  devise_for :users



  get 'pages/home'

  get 'pages/hiBrayden'

  root to: "pages#home"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
