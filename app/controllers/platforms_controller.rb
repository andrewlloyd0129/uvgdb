class PlatformsController < ApplicationController
    before_action :set_platform, only: [:show, :edit, :update, :destroy]

  def index
    @q = Platform.search(params[:q])
      @platforms = @q.result
  end
  def new
    @platform = Platform.new
  end
  def create
    @platform = Platform.new(platform_params)
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
        redirect_to @platform, notice: 'Your platform was edited successfully'
      else
        render :edit, notice: 'Your platform was not edited successfully'
      end
  end

  def show
  end

  def destroy
    if @platform.destroy
          redirect_to platforms_path, notice: 'Your platform was deleted successfully'
      else
        render :show, notice: 'penis'
      end
  end
  private

    def set_platform
      @platform = Platform.find(params[:id])
    end

    def platform_params
          params.require(:platform).permit(:name, :release_date, :brand)
    end

end
