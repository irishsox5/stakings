Rails.application.routes.draw do


  resources :relationships

  resources :tournaments

  resources :stakes do
    resources :comments, :only => [:create]
  end

  resources :tours

  # STATIC ROUTES==============================================
  root "static_pages#home"
  get '/landing_page' => "static_pages#home", :as => "landing"

  # USER ROUTES==============================================
  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "callbacks" }
  as :user do
    get '/auth/twitter/' => "callbacks#passthru {:provider=>/twitter/}"
    get "/auth/twitter", :as => "signin"
    get "/signout" => "sessions#destroy"
  end

  resources :users, :only => [:show, :index]

end
