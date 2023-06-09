Rails.application.routes.draw do
  devise_for :logins
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :voters
  get "admin", to: "admins#adminhome"
  get "about", to: "pages#about"
  get "assembly", to: "pages#assembly"
  get "candidate", to: "pages#candidate123"
  get 'search', to: 'voters#search', as: 'search_voters'
  root "pages#home"
  get "signup", to: 'pages#signup'
  get "login", to: 'pages#login'
  
end
