class PagesController < ApplicationController
  
  def home
    @title = "Home"
    if signed_in?
      @game = Game.new
    end
  end
  
  def about
    @title = "About"
  end

end
