Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create, :destroy ] do
    resources :ingredients, only: [ :new, :create ]
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [:destroy ]
  root to: "cocktails#index"


end

