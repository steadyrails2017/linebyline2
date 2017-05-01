class DisplaysController < ApplicationController

	def index
      @displays = Display.all
    end

    def show
      @display = Display.find(params[:id])
    end

    def new
      @display = Display.new
    end

    def create
      @display = Display.create(display_params)
      redirect_to displays_path
    end

    def edit
      @display = Display.find(params[:id])
    end

    def update
      @display = Display.find(params[:id])
      @display.update(display_params)
      redirect_to display_path(@display)
    end

    def destroy
      @display = Display.find(params[:id])
      @display.destroy
      redirect_to displays_path
    end


  private

  def display_params
    params.require(:display).permit(:caption, :image)
  end

end


