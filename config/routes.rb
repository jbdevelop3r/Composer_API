Rails.application.routes.draw do

root to: "api/v1/composers#index"

  namespace :api do 
    namespace :v1 do
      resources :composers do
        resources :albums
        resources :songs 
      end
    end
  end


  namespace :v2 do
    resources :composers do
      resources :albums
      resources :songs
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
