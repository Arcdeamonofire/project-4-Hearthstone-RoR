class DecksController < ApplicationController
  def index
    @user = User.find(session[:user]["id"])
    user_id = session[:user]["id"]
    @decks = Deck.where(user_id: user_id)
  end

  def new
    @user = User.find(params[:user_id])
    @deck = Deck.new
  end

  def create
    deck = Deck.create(deck_params)
    redirect_to decks_path;
  end

  private
  def deck_params
    params.require(:deck).permit(:name, :character_class, :user_id)
  end
end
