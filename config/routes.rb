Rails.application.routes.draw do

  resources :resubmissions
  resources :game_gallaries
  resources :global_searches
  namespace :user do
    get 'dashboard/profile'
    get 'dashboard/admin'
  end


  resources :people do
    member do
      put "favorite" => "people#favorite"
      put "unfavorite" => "people#unfavorite"
      put "like" => "people#like"
      put "unlike" => "people#unlike"
      put "dislike" => "people#dislike"
      put "undislike" => "people#undislike"
    end
  end
  resources :platforms do
    member do
      put "favorite" => "platforms#favorite"
      put "unfavorite" => "platforms#unfavorite"
      put "like" => "platforms#like"
      put "unlike" => "platforms#unlike"
      put "dislike" => "platforms#dislike"
      put "undislike" => "platforms#undislike"
    end
  end
  resources :characters do
    member do
      put "favorite" => "characters#favorite"
      put "unfavorite" => "characters#unfavorite"
      put "like" => "characters#like"
      put "unlike" => "characters#unlike"
      put "dislike" => "characters#dislike"
      put "undislike" => "characters#undislike"
    end
  end
  resources :studios do
    member do
      put "favorite" => "studios#favorite"
      put "unfavorite" => "studios#unfavorite"
      put "like" => "studios#like"
      put "unlike" => "studios#unlike"
      put "dislike" => "studios#dislike"
      put "undislike" => "studios#undislike"
    end
  end

  resources :games do
    member do
      get :toggle_wishlist
      get :toggle_owned
      get :toggle_beaten
      get :toggle_completed

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
