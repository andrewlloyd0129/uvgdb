class CharactersController < ApplicationController
	before_action :set_character, only: [:show, :edit, :update, :destroy]

	def index
		@q = Character.search(params[:q])
    	@characters = @q.result
	end
	def new
		@character = Character.new
	end
	def create
		@character = Character.new(character_params)
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
	      redirect_to @character, notice: 'Your character was edited successfully'
	    else
	      render :edit
	    end
	end

	def show
	end
	
	def destroy
		if @character.destroy
      		redirect_to characters_path, notice: 'Your character was destroyed successfully'
	    else
	      render :show, notice: 'penis'
	    end
	end

	def set_character
		@character = Character.find(params[:id])
	end
	def character_params
		    params.require(:character).permit(:name, :biography, :age, :home_town, :first_appearence)
	end

end