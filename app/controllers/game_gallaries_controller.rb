class GameGallariesController < ApplicationController
before_action :set_thing, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all
  
  def index
    q_param = params[:q]
      page = params[:page]

      @q = GameGallary.ransack q_param
      @game_gallaries = @q.result.page(page).per(10)
  end

  def new
    @game_gallary = GameGallary.new
  end

  def create
    @game_gallary = GameGallary.new(game_gallaries_params)
    searchable
   if @game_gallary.save
      redirect_to game_gallaries_path
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    if @game_gallary.update(game_gallaries_params)
      searchable
      @game_gallary.save
      redirect_to @game_gallary
    else
      render :edit
    end
  end

  def destroy
    if @game_gallary.destroy
      redirect_to game_gallaries_path, notice: 'Your post was edited successfully'
    else
      render :show
    end
  end

  private

  def game_gallaries_params
    params.require(:game_gallary).permit(:title, :image, :info)
  end

  def set_thing
    @game_gallary = GameGallary.find(params[:id])
  end
  
  def searchable
    @game_gallary.searchable = @game_gallary.title + @game_gallary.info
  end

end