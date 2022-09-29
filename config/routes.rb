Rails.application.routes.draw do
  resources :shopthelooks
  
  root 'home#index'  

  match '/about',  to: 'home#about',via: 'get'
  match '/contact',  to: 'home#contact',via: 'get'

  get 'pages/home'
  devise_for :users #,:skip => [:registrations] 
  resources :posts

  devise_scope :user do
    get "login" => "devise/sessions#new"
    end


end
