Rails.application.routes.draw do

  # STATIC ROUTES==============================================
  root "static_pages#home"
  get '/landing_page' => "static_pages#home", :as => "landing"

  # USER ROUTES==============================================
   resources :users, :only => [:show, :index]

end
