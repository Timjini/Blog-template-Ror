Rails.application.routes.draw do
  
  root 'home#index'
  
  get 'pages/home'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :posts

end
