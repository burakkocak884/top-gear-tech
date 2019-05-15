class GaragesController < ApplicationController
 def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def new
   @garage = Garage.new
  end

  def create
   @garage = Garage.create(garage_params)
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def update
   @garage = Garage.find(params[:id])
  end
  private
  def garage_params
    params.require(:garage).permit(:name, :description, :total_cost)
  end
end
