class VehiclesController < ApplicationController
  
  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.create(vehicle_params)
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
  end
  private
  def vehicle_params
    params.require(:vehicle).permit(:make,:model, :year, :mileage, :license_plate, :color, :customer_id)
  end
end
