Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :contacts,  only: [:home, :create]
    end
  end
  root 'home#index'
  get 'home/portfolio', to: 'home#portfolio'
  get 'home/challenges', to: 'home#challenges'
  get 'home/contact', to: 'home#contact'

  get 'api/v1/contacts', to: 'api/v1/contacts#create'
    get 'home/contact/all', to: 'api/v1/contacts#home'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
