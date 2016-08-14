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

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    deck = Deck.find(params[:id])
    deck.update(deck_params)

    redirect_to "/cards?deck_id="+params[:id]
  end

  def destroy
    deck = Deck.find(params[:id])
    deck.destroy

    redirect_to decks_path
  end

  private
  def deck_params
    params.require(:deck).permit(:name, :type, :user_id, :character_class)
  end
end
