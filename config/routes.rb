Rails.application.routes.draw do
  
  root "posts#index"
  resources :posts 
  
  #pages routes
  get "/pages/about", to: "pages#about"
end
