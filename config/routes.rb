Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  root "welcome#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "my_portfolio", to: "users#my_portfolio"
  get "search_stock", to: "stocks#search"
end
