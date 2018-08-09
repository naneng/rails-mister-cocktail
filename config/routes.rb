Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :ingredients, only: [ :new, :create ]
    resources :doses, only: [ :new, :create, :destroy ]
  end

  # resources :restaurants do
  #   resources :reviews, only: [ :index, :new, :create ]
  # end
  # resources :reviews, only: [ :show, :edit, :update, :destroy ]


  # get "restaurants/:restaurant_id/reviews",     to: "reviews#index"
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
  # get "reviews/:id",                            to: "reviews#show"
  # get "reviews/:id/edit",                       to: "reviews#edit"
  # patch "reviews/:id",                          to: "reviews#update"
  # delete "reviews/:id",                         to: "reviews#destroy"
end
