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
   devise_for :users, controllers: {session: "omniauth_callbacks"}
   get "/auth/twitter", :as => "signin"
   get "/auth/:provider/callback" => "sessions#create"
   get "/signout" => "sessions#destroy", :as => :signout

   resources :users, :only => [:show, :index]

end
