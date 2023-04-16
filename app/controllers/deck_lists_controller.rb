class DeckListsController < ApplicationController
  before_action :set_deck_list, only: %i[ show update destroy ]

  # GET /deck_lists
  def index
    @deck_lists = DeckList.all

    render json: @deck_lists
  end

  # GET /deck_lists/1
  def show
    render json: @deck_list
  end

  # POST /deck_lists
  def create
    @deck_list = DeckList.new(deck_list_params)

    if @deck_list.save
      render json: @deck_list, status: :created, location: @deck_list
    else
      render json: @deck_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deck_lists/1
  def update
    if @deck_list.update(deck_list_params)
      render json: @deck_list
    else
      render json: @deck_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deck_lists/1
  def destroy
    @deck_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck_list
      @deck_list = DeckList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deck_list_params
      params.fetch(:deck_list, {})
    end
end
