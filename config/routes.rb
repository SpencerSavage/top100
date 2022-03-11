Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    resources :billboards do
      resources :artists
     
  end

  resources :topics, except: [:index, :show, :update, :create, :destroy] do 
    resources :songs
  end
end
