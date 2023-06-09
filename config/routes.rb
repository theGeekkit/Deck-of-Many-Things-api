Rails.application.routes.draw do
  resources :deck_lists
  resources :decks

  get 'cards/index'
  resources :cards
  post '/cards/draw', to: 'cards#draw', as: 'draw_cards'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
