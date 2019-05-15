class GaragesController < ApplicationController
  def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
    @customer = @garage.customers.build
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
