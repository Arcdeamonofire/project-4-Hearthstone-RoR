require 'unirest'
require 'json'
class CodexesController < ApplicationController


  def home

  end

  def search
    if params[:class]
      response = Unirest.get "https://omgvamp-hearthstone-v1.p.mashape.com/cards/classes/"+params[:class],
        headers:{
          "X-Mashape-Key" => "ZOsH8lOvMUmshMSQKkgc0W3cj7WYp1bIMIcjsneH1O6x9ejWUD",
          "Accept" => "application/json"
        }
      @cards = response.body;
    end
  end

end
