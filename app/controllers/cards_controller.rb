class CardsController < ApplicationController

  def index
    draw = params[:draw].to_i
    @cards = Card.all.sample(draw)
    render json: @cards
  end
  
  def draw
    num_cards = params[:num_cards].to_i
    drawn_cards = []
    while drawn_cards.size < num_cards do
      card = Card.where(used: false).sample
      if card
        drawn_cards << card
        card.update(used: true)
      end
    end
    render json: drawn_cards
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      render json: @card, status: :created, location: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end
 
  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  def show
    
  end
  
  def new
    @card = Card.new
  end
end



