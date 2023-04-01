class CardsController < ApplicationController
  def index
    draw = params[:draw].to_i
    @cards = Card.all.sample(draw)
    render json: @cards
  end
end
