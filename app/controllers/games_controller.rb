class GamesController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy, :gamtus_maker, :toggle_status]
  before_action :set_gamtus, only: [:show, :toggle_wishlist, :toggle_owned, :toggle_beaten, :toggle_completed]
  access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all
  
  def index
    q_param = params[:q]
      page = params[:page]

      @q = Game.published.ransack q_param
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
      render :show, notice: 'Your edit failed'
    end
  end


  def toggle_status
    if @game.draft?
      @game.published!
    elsif @game.published?
      @game.draft!
    end      
    redirect_to user_dashboard_admin_path, notice:  "#{@game.title} status has been updated."
  end
  
  def toggle_wishlist
    gamtus_maker
    @gamtus.update(status: 'wishlist')
    redirect_to game_path, notice: 'game has been added to your wishlist'
  end

  def toggle_owned
    gamtus_maker
    @gamtus.update(status: 'owned')
    redirect_to game_path, notice: 'game has been added to your owned list'
  end

  def toggle_beaten
    gamtus_maker
    @gamtus.update(status: 'beaten')
    redirect_to game_path, notice: 'game has been added to your beaten list'
  end

  def toggle_completed
    gamtus_maker
    @gamtus.update(status: 'completed')
    redirect_to game_path, notice: 'game has been added to your completed list'
  end

  private

  def games_params
    params.require(:game).permit( :title, 
                                  :description, 
                                  :release, 
                                  :main_image,
                                  game_gallaries_attributes:
                                    [ :id,
                                      :title, 
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

  def set_gamtus
    set_thing
    if user_signed_in?  
    @gamtus = UserGameStatus.find_by user_id: current_user.id, game_id: @game.id
    end
  end

  def gamtus_maker
    if @gamtus == nil
      @gamtus = UserGameStatus.create(user_id: current_user.id, game_id: @game.id)
    end
  end
end
