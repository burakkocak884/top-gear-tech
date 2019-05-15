class ServicesController < ApplicationController
def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
   @service = Service.new
  end

  def create
   @service = Service.create(service_params)
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
   @service = Service.find(params[:id])
  end
  private
  def service_params
    params.require(:service).permit(:name, :description, :total_cost)
  end
end
