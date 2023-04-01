class CardsController < ApplicationController

  def index
    draw = params[:draw].to_i
    @cards = Card.all.sample(draw)
    render json: @cards
  end
  
  def draw
    num_cards = params[:num_cards].to_i
    @cards = Card.draw(num_cards)
    render json: @cards
  end

  def create
    
  end
 
  def new
    @card = Card.new
  end
end



