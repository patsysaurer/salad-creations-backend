class SaladController < ApplicationController

    def index
      @salads = Salad.all 
    end

    def show
      @salad = Salad.find(params[:id])
    end

    def new 
      @salad = Salad.new
    end

    def create
      @salad = Salad.create(salad_params)
      if @salad.valid?
         redirect_to salads_path
      end
    end

    private
    def salad_params
      params.require(:salad).permit(:name, :description, :image)
    end

end
