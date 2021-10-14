class ClubsController < ApplicationController
  
  

  def index
    @clubs = Club.all
  end


end
