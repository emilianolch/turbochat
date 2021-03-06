Rails.application.routes.draw do
  get 'home/about'
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'messages/new'
  get 'messages/create'
  resources :rooms do
    resources :messages
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "rooms#index"
end
