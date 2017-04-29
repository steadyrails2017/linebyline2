class DisplaysController < ApplicationController

	def index
    end

    def new
    	@display = Display.new
    end

end
