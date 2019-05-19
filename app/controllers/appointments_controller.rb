class AppointmentsController < ApplicationController
      def index
          if user_signed_in?
          @appointments = Appointment.where(garage_id: params[:garage_id])
          @garage = Garage.find_by_id(params[:garage_id])
        
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
      
        #@garage_id = params[:garage_id]
        @appointment = Appointment.new(garage_id: params[:format].to_i)
        @appointment.build_customer
      end

      def create
          if user_signed_in?

          user = current_user
          
     
         @appointment = Appointment.new(appointment_params)
         @appointment.save
         garage = @appointment.garage
         # @garage = @appointment.garage_id
        
          redirect_to garage_appointments_path(garage)
       
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

          @appointment = Appointment.find_by_id(params[:id])

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
    redirect_to garage_appointments_path(g)
  else
   redirect_to user_session_path
  end

  end
  


   def appointment_params
    params.require(:appointment).permit(:description, :date, :garage_id, :customer_id, :customer_attributes => [:first_name, :last_name ,:standing_balance, :email] )
  end
end
