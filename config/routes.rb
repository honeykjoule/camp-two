Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :campers, only: [:show, :edit, :update]
  # Defines the root path route ("/")
  root "static#index"
end
