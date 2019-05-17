class AppointmentsController < ApplicationController
  def index
    if user_signed_in?

   

    @appointments = Appointment.where(garage_id: params[:format].to_i)
    @garage = Garage.find_by_id(params[:format].to_i)
  else
     redirect_to user_session_path
   end
  end
  

  def show
    if user_signed_in?
      
      @appointment = Appointment.find(params[:id])
      
    else
      redirect_to user_session_path

  end

  end

  def new
    
    @appointment = Appointment.new

  end

  def create
      if user_signed_in?

      user = current_user
      
 
     @appointment = Appointment.create(appointment_params)
   
     garage = @appointment.garage
      redirect_to appointments_path(garage)
   
 else 
  redirect_to user_session_path
end
  end
  

  def edit
     if user_signed_in?
    @appointment = Appointment.find(params[:id])
  else

  redirect_to user_session_path
end
  end

  def update

    if user_signed_in?
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)

    @user = current_user
    
  else
    redirect_to user_session_path
  end
  end

  def destroy
     if user_signed_in?
    appointment = Appointment.find(params[:id])
    g = appointment.garage
    appointment.destroy
    redirect_to appointments_path(g)
  else
   redirect_to user_session_path
  end

  end
  


   def appointment_params
    params.require(:appointment).permit(:description, :date, :garage_id, :customer_id)
  end
end
