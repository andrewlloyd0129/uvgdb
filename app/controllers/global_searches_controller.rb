class GlobalSearchesController < ApplicationController
	def index
		q_param = params[:q]
    	page = params[:page]

    	@q = Game.ransack q_param
    	# @q += Character.ransack q_param

	    @searchResults = @q.result.page(page).per(10)
	end
end
