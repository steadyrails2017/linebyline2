class DisplaysController < ApplicationController

	def index
       @displays = Display.all
    end

    def create
        @display = Display.create(display_params)
        redirect_to displays_path
    end

    def new
    	@display = Display.new
    end


  private

  def display_params
    params.require(:display).permit(:caption, :image)
  end

end
