class GamesController < ApplicationController
#  before_filter :authenticate
  
  def new
    @title = "Start a new game"
  end
  
  def index
    @game = Game.new
    @games = Game.all
  end
  
  def create
    @game = Game.new(params[:game])
    if @game.save
      flash[:success] = "New game created!"
      redirect_to games_path
    else
      @title = "Start game"
      render 'new'
    end
  end
  
  def destroy
  end
end