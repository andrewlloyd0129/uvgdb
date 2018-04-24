class PeopleController < ApplicationController
	before_action :set_thing, only: [:show, :edit, :update, :destroy]
	access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

	def index
		@q = Person.search(params[:q])
    	@peoples = @q.result
	end
	def new
		@people = Person.new
	end
	def create
		@people = Person.new(people_params)
	    searchable
	    if @people.save
	      redirect_to people_path
	    else
	      render :new
	    end
	end

	def edit
	end
	
	def update
	    if @people.update(people_params)
	      searchable
	      @people.save
	      redirect_to @people, notice: 'Your people was edited successfully'
	    else
	      render :edit
	    end
	end

	def show
		@gamples = Gample.where(person_id: @people.id)
		@games = Game.all
	end
	
	def destroy
		if @people.destroy
      		redirect_to people_path, notice: 'Your people was destroyed successfully'
	    else
	      render :show, notice: 'Your people could not be destroyed'
	    end
	end

	def set_thing
		@people = Person.find(params[:id])
	end
	def people_params
		    params.require(:person).permit(:name, :bigraphy)
	end

	private
	def searchable
		@people.searchable = @people.name + @people.bigraphy
	end
end
