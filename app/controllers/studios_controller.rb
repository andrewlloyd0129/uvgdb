class StudiosController < ApplicationController
	before_action :set_thing, only: [:show, :edit, :update, :destroy, :toggle_status]
	access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

	def index
		q_param = params[:q]
	    page = params[:page]

	    @q = Studio.published.ransack q_param
	    @studios = @q.result.page(page).per(10)
	end
	def new
		@studio = Studio.new
	end
	def create
		@studio = Studio.new(studio_params)
			searchable
	    if @studio.save
	      redirect_to studios_path
	    else
	      render :new
	    end
	end

	def edit
	end
	def update
	    if @studio.update(studio_params)
	    	searchable
	    	@studio.save
	      redirect_to @studio
	    else
	      render :edit, notice: 'Your studio could not be  edited'
	    end
	end
	def show
	end
	def destroy
		if @studio.destroy
      		redirect_to studios_path, notice: 'Your studio was edited successfully'
	    else
	      render :show, notice: 'Your studio could not be deleted'
	    end
	end

	def toggle_status
    if @studio.draft?
      @studio.published!
    elsif @studio.published?
      @studio.draft!
    end      
    redirect_to user_dashboard_admin_path, notice:  "#{@studio.title} status has been updated."
  end

	private

	def set_thing
		@studio = Studio.find(params[:id])
	end
	def studio_params
		    params.require(:studio).permit(:title, :location)
	end

	def searchable
		@studio.searchable = @studio.title + @studio.location
	end

end
