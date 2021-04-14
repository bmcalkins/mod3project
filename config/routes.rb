Rails.application.routes.draw do
  resources :listings
  resources :sellers
  resources :users, only: [:create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
