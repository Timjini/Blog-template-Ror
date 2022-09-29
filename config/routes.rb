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
    match "/404", to: "errors#not_found", via: :all
    match "/500", to: "errors#internal_server_error", via: :all

end
