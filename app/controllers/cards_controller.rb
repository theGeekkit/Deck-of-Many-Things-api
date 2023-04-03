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
    
  end
 
  def new
    @card = Card.new
  end
end



