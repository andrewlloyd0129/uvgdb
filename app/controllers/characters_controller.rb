class CharactersController < ApplicationController
	before_action :set_thing, only: [:show, :edit, :update, :destroy]
	access all: [:index, :show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

	def index
		q_param = params[:q]
	    page = params[:page]

	    @q = Character.ransack q_param
	    @characters = @q.result.page(page).per(10)
	end

	def new
		@character = Character.new
	end

	def create
		@character = Character.new(character_params)
		searchable
	    if @character.save
	      redirect_to characters_path
	    else
	      render :new
	    end
	end

	def edit
	end
	
	def update
	    if @character.update(character_params)
				searchable
	      @character.save
	      redirect_to @character, notice: 'Your character was edited successfully'
	    else
	      render :edit
	    end
	end

	def show
		@chargams = CharactersGame.where(character_id: @character.id)
		@games = Game.all
	end
	
	def destroy
		if @character.destroy
      		redirect_to characters_path, notice: 'Your character was destroyed successfully'
	    else
	      render :show, notice: 'penis'
	    end
	end

	def set_thing
		@character = Character.find(params[:id])
	end
	def character_params
		    params.require(:character).permit(:name, :biography, :age, :home_town, :first_appearence)
	end
	def searchable
		  @character.searchable = @character.name + @character.biography + @character.age.to_s + @character.home_town.to_s + @character.first_appearence 
	end
end