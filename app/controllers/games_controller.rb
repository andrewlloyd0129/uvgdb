class GamesController < ApplicationController
  def index
    @q = Game.search(params[:q])
    @games = @q.result
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(games_params)
    @game.save

  end

  private

  def games_params
    params.require(:game).permit(:title, :description, :release)
  end

end
