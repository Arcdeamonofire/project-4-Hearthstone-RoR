class CardsController < ApplicationController
  def index
    @deck = Deck.find(params[:deck_id])
    @cards = Card.where(deck_id: params[:deck_id])
  end

  def new
    response = Unirest.get "https://omgvamp-hearthstone-v1.p.mashape.com/cards/"+params[:card_name],
    headers:{
      "X-Mashape-Key" => "ZOsH8lOvMUmshMSQKkgc0W3cj7WYp1bIMIcjsneH1O6x9ejWUD",
      "Accept" => "application/json"
    }
    @data = response.body[0]
    @decks = Deck.where(user_id: session[:user]["id"])
    @card = Card.new
  end

  def show
    # These code snippets use an open-source library.
    response = Unirest.get "https://omgvamp-hearthstone-v1.p.mashape.com/cards/"+params[:id],
    headers:{
      "X-Mashape-Key" => "ZOsH8lOvMUmshMSQKkgc0W3cj7WYp1bIMIcjsneH1O6x9ejWUD",
      "Accept" => "application/json"
    }
    @card = response.body
    if session[:user]
      @isUser = true
    end
  end

  def create
    deck = Deck.find(params["card"]["deck_id"])
    puts ("is class equal to Neutral?")
    puts (params["card"]["player_class"] === "")
    puts ("is class equal to deck class?")
    puts (params["card"]["player_class"] === deck["character_class"])
    if params["card"]["player_class"] === ""
      card = Card.create(card_params)
      redirect_to "/cards?deck_id="+params["card"]["deck_id"]
    elsif params["card"]["player_class"] === deck["character_class"]
      card = Card.create(card_params)
      redirect_to "/cards?deck_id="+params["card"]["deck_id"]
    else
      message = "You can only add cards that are "+ deck["character_class"] +" or Neutral to your deck!"
      flash[:notice] = message
      redirect_to :back
    end
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy

    redirect_to :back
  end

  private
  def card_params
    params.require(:card).permit(:name, :card_type, :deck_id, :cost, :attack, :health, :durability, :description, :flavor, :img, :player_class, :in_deck)
  end

end
