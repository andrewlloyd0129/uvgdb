class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy, :favorite, :unfavorite, :like, :unlike, :dislike, :undislike]
  access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all
  
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
    @gamplats = Gamplat.where(game_id: @game.id)
    @platforms = Platform.all
  end

  def edit
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

  def favorite
    @game.liked_by current_user, :vote_scope => 'favorite'
    redirect_to @game
  end

  def unfavorite
    @game.unliked_by current_user, :vote_scope => 'favorite'
    redirect_to @game
  end

  def like
    @game.liked_by current_user, :vote_scope => 'liked'
    redirect_to @game
  end

  def unlike
    @game.unliked_by current_user, :vote_scope => 'liked'
    redirect_to @game
  end

  def dislike
    @game.disliked_by current_user, :vote_scope => 'liked'
    redirect_to @game
  end
  
  def undislike
    @game.undisliked_by current_user, :vote_scope => 'liked'
    redirect_to @game
  end

  private

  def games_params
    params.require(:game).permit(:title, :description, :release, gamplats_attributes: [:id, :platform_id, :_destroy])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
