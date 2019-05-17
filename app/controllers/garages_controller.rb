class GaragesController < ApplicationController
     

     def index

         if user_signed_in?
          @garages = Garage.all
          @user = current_user
       else
          redirect_to user_session_path
        end
      end


  def show
    if user_signed_in?
    @garage = Garage.find(params[:id])
    @appointment = @garage.appointments.build

    @user = current_user
    
  else
    redirect_to user_session_path
  end
  end

  def new
   
   @garage = Garage.new
  end

  def create
    if user_signed_in?
      user = current_user

      
   @garage = Garage.new(garage_params)
   @garage.user_id = user.id
   @garage.save
   redirect_to garages_path(user)
   
 else 
  redirect_to user_session_path
end
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def update
   if user_signed_in?
    @garage = Garage.find(params[:id])
    @garage.update(garage_params)

    @user = current_user
    
  else
    redirect_to user_session_path
  end
  end

   def destroy
    user = current_user
    garage = Garage.find(params[:id])
    

    garage.destroy
    redirect_to garages_path(user)

   end
  
  private
  def garage_params
    params.require(:garage).permit(:name, :location, :tire_service, :service_any_vehicle, :user_id)
  end
end
