Rails.application.routes.draw do
  resources :homepages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # You can have the root of your site routed with "root"
  root 'homepages#index'
  
  resources :homepages
  #resources :pokemon
  resources :sessions

  #Session routes
  match '/login', to: 'sessions#new', via: :get
  match '/login_create', to: 'sessions#create', via: :post
  match '/logout', to: 'sessions#destroy', via: :delete
  #Route for logo to redirect to homepage
  match '/logo', to: 'homepages#index', via: :post
  #Route for All Pokémon to be displayed
  match '/allpokemon', to: 'pokemon#index', via: :post
  
end
