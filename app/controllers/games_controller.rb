class GamesController < ApplicationController
  def index
    q_param = params[:q]
      page = params[:page]

      @q = Game.ransack q_param
      @games = @q.result.page(page).per(10)
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
    @platform = Platform.where(id: @game.platforms_id)
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

  def destroy
    @game = Game.find(params[:id])
    if @game.destroy
      redirect_to games_path, notice: 'Your post was edited successfully'
    else
      render :show, notice: 'penis'
    end
  end

  private

  def games_params
    params.require(:game).permit(:title, :description, :release)
  end

end
