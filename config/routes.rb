Rails.application.routes.draw do
  # resources :campers, only: [:index]
  # resources :campsites, only: [:index]

  resources :campsites, only: [:index] do
    resources :campers, only: [:index]
  end


  resources :campers, only: [:index] do
    resources :supplies, only: [:index]
  end

  resources :supplies, only: [:index]
end
