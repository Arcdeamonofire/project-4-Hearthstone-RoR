class CardsController < ApplicationController
  def show
    # These code snippets use an open-source library.
    response = Unirest.get "https://omgvamp-hearthstone-v1.p.mashape.com/cards/"+params[:id],
    headers:{
      "X-Mashape-Key" => "ZOsH8lOvMUmshMSQKkgc0W3cj7WYp1bIMIcjsneH1O6x9ejWUD",
      "Accept" => "application/json"
    }
    @card = response.body
  end

end