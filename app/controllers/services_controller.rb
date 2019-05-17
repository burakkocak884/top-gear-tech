class ServicesController < ApplicationController
def index
     if user_signed_in?
     @services = Service.where(vehicle_id: params[:format].to_i)
    @vehicle  =Vehicle.find_by_id(params[:format].to_i)
  else
    redirect_to user_session_path
  end
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
   @service = Service.new
  end

  def create

    if user_signed_in?
      user = current_user
      

      
    @service = Service.create(service_params)

   vehicle = @service.vehicle

   redirect_to services_path(vehicle)
   
 else 
  redirect_to user_session_path
end
  
  
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
   @service = Service.find(params[:id])
  end
  def destroy

  end




  private
  def service_params
    params.require(:service).permit(:name, :description, :total_cost, :vehicle_id)
  end
end
