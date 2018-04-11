class ResubmissionsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], user: {except: [:destroy, :update, :edit]}, admin: :all
  
  def index
    @resubmissions = Resubmission.all
  end

  def new
    @resubmission = Resubmission.new
  end

  def create
    @resubmission = Resubmission.new(resubmission_params)
   if @resubmission.save
      redirect_to games_path
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    if @resubmission.update(resubmission_params)
      @resubmission.save
      redirect_to @resubmission
    else
      render :edit
    end
  end

  def destroy
    if @resubmission.destroy
      redirect_to games_path, notice: 'Your post was edited successfully'
    else
      render :show, notice: 'penis'
    end
  end

  private

  def resubmission_params
    params.require(:resubmission).permit(:title, :description, :email)
  end

  def set_thing
    @resubmission = Resubmission.find(params[:id])
  end
  

end
