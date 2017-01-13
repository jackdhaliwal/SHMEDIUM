Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root "posts#index"
  resources :posts 
  
  #pages routes
  get "/pages/about", to: "pages#about"
end
