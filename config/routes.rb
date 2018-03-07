Rails.application.routes.draw do

  resources :studios
  devise_for :users

  resources :games

  get 'pages/home'

  root to: "pages#home"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
