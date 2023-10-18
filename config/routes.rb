Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
  get "movies" => "home#movies"
  get "directors" => "home#directors"
  get "genres" => "home#genres"
  resources :movies, only: [:show, :new, :create, :edit, :update] do
    patch :publish, on: :member
    patch :draft, on: :member
    get :list, on: :member
  end
  resources :directors, only: [:show, :new, :create, :edit, :update] do
    patch :publish, on: :member
    patch :draft, on: :member
    get :list, on: :member
  end
  resources :genres, only: [:show, :new, :create, :edit, :update] do
    patch :publish, on: :member
    patch :draft, on: :member
    get :list, on: :member
  end

end
