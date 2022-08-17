Rails.application.routes.draw do
  
  root 'home#index'
  
  get 'pages/home'
  devise_for :users
  resources :posts

end
