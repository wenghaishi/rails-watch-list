Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookmarks do
    resources :lists, only: [:index, :new, :create]
  end

  resources :lists do
    resources :bookmarks, only: [:index, :new, :create]
  end
end
