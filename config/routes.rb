Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :voters
  get "about", to: "pages#about"
  get "assembly", to: "pages#assembly"
  get 'search', to: 'voters#search', as: 'search_voters'
  root "pages#home"
end
