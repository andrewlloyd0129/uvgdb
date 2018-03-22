class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all
  
  def index
    q_param = params[:q]
      page = params[:page]

      @q = Game.ransack q_param
      @games = @q.result.page(page).per(10)
  end

  def new
    @game = Game.new
    3.times { @game.gamplats.build }
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
    @gamplats = Gamplat.where(game_id: @game.id)
    @platforms = Platform.all
  end

  def edit
    3.times { @game.gamplats.build }
  end

  def update
    if @game.update(games_params)
      redirect_to @game
    else
      render :edit
    end
  end

  def destroy
    if @game.destroy
      redirect_to games_path, notice: 'Your post was edited successfully'
    else
      render :show, notice: 'penis'
    end
  end

  private

  def games_params
    params.require(:game).permit(:title, :description, :release, gamplats_attributes: [:platform_id])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
