class RacesController < ApplicationController

	def index
		@race = Race.new
	end

	def new 
		@race = Race.new
	end

end
