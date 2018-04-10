class GamesController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all
  
  def index
    q_param = params[:q]
      page = params[:page]

      @q = Game.ransack q_param
      @games = @q.result.page(page).per(10)
  end

  def new
    @game = Game.new
    @game.game_gallaries.build
  end

  def create
    @game = Game.new(games_params)
    searchable
   if @game.save
      redirect_to games_path
    else
      render :new
    end

  end

  def show
    @chargams = CharactersGame.where(game_id: @game.id)
    @characters = Character.all

    @gamplats = Gamplat.where(game_id: @game.id)
    @gamples = Gample.where(game_id: @game.id)
    @platforms = Platform.all
    @peoples = Person.all 
  end

  def edit
  end

  def update
    if @game.update(games_params)
      searchable
      @game.save
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
    params.require(:game).permit( :title, 
                                  :description, 
                                  :release, 
                                  :main_image,
                                  game_gallaries_attributes:
                                    [:title, 
                                      :image, 
                                      :_destroy], 
                                  gamplats_attributes: 
                                    [:id, 
                                      :platform_id, 
                                      :_destroy])
  end

  def set_thing
    @game = Game.find(params[:id])
  end
  
  def searchable
    @game.searchable = @game.title + @game.release.to_s + @game.description
  end

end
