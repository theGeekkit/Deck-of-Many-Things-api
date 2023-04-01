Rails.application.routes.draw do
  get 'cards/index'
  resources :cards, only: [:index]
  post '/cards/draw', to: 'cards#draw', as: 'draw_cards'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
