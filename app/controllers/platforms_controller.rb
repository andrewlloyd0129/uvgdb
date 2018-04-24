class PlatformsController < ApplicationController
    before_action :set_thing, only: [:show, :edit, :update, :destroy]
    access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

  def index
    q_param = params[:q]
      page = params[:page]

      @q = Platform.ransack q_param
      @platforms = @q.result.page(page).per(10)
  end
  def new
    @platform = Platform.new
  end
  def create
    @platform = Platform.new(platform_params)
      searchable
      if @platform.save
        redirect_to platforms_path
      else
        render :new
      end
  end

  def edit
  end

  def update
      if @platform.update(platform_params)
        searchable
        @platform.save
        redirect_to @platform, notice: 'Your platform was edited successfully'
      else
        render :edit, notice: 'Your platform was not edited successfully'
      end
  end

  def show
    @games = Game.all
    @gamplats = Gamplat.where(platform_id: @platform.id)
  end

  def destroy
    if @platform.destroy
          redirect_to platforms_path, notice: 'Your platform was deleted successfully'
      else
        render :show, notice: 'Your platform could not be  deleted'
      end
  end
  private

    def set_thing
      @platform = Platform.find(params[:id])
    end

    def platform_params
          params.require(:platform).permit(:name, :release_date, :brand)
    end

    def searchable
      @platform.searchable = @platform.name + @platform.release_date.to_s + @platform.brand 
    end

end
