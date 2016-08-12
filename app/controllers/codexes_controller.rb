require 'unirest'
require 'json'
class CodexesController < ApplicationController


  def home

  end

  def search
    if params[:class] && params[:class]!="None"
      response = Unirest.get "https://omgvamp-hearthstone-v1.p.mashape.com/cards/classes/"+params[:class],
        headers:{
          "X-Mashape-Key" => "ZOsH8lOvMUmshMSQKkgc0W3cj7WYp1bIMIcjsneH1O6x9ejWUD",
          "Accept" => "application/json"
        }
      @cards = response.body;
      @none = false;
    elsif params[:class]==="None"
      response = Unirest.get "https://omgvamp-hearthstone-v1.p.mashape.com/cards",
      headers:{
        "X-Mashape-Key" => "wR98q1tg3Gmsh5Rvg6agqCPSyvMFp1czAPpjsn0bc37sLHCyZh",
        "Accept" => "application/json"
      }
      @cards = response.body;
      @none = true;
    end
  end

end
