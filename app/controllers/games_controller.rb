class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(games_params)
   if @game.save
      redirect_to games_path
    else
      render :new
    end

  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(games_params)
      redirect_to @game
    else
      render :edit
    end
  end

  private

  def games_params
    params.require(:game).permit(:title, :description, :release)
  end

end
