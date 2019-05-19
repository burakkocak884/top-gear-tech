class VehiclesController < ApplicationController
  
  def index
     if user_signed_in?
     

    @vehicles = Vehicle.where(customer_id: params[:format].to_i)
    @customer  = Customer.find_by_id(params[:format].to_i)
  else
    redirect_to user_session_path
  end
end

  def show
   if user_signed_in?
      
      @vehicle = Vehicle.find(params[:id])
    else
      redirect_to user_session_path

  end
  end

  def new
   
    @garage_id = params[:format]
    @vehicle = Vehicle.new
  end

  def create
     if user_signed_in?

      user = current_user
    @vehicle = Vehicle.create(vehicle_params)

   owner = @vehicle.customer
   
  
   redirect_to vehicles_path(owner)
   
 else 
  redirect_to user_session_path
end
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
