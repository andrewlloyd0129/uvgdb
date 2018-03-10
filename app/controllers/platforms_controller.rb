class PlatformsController < ApplicationController
    before_action :set_platform, only: [:show, :edit, :update, :destroy]

  def index
    @q = Studio.search(params[:q])
      @studios = @q.result
  end
  def new
    @platform = Studio.new
  end
  def create
    @platform = Studio.new(studio_params)
      if @platform.save
        redirect_to studios_path
      else
        render :new
      end
  end

  def edit
  end
  def update
      if @platform.update(studio_params)
        redirect_to @platform
      else
        render :edit
      end
  end
  def show
  end
  def destroy
    if @platform.destroy
          redirect_to studios_path, notice: 'Your platform was edited successfully'
      else
        render :show, notice: 'penis'
      end
  end
  def set_studio
    @platform = Studio.find(params[:id])
  end
  def studio_params
        params.require(:platform).permit(:title, :location)
  end

end
