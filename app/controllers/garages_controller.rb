class GaragesController < ApplicationController
     
#ready to start at javascript project
     def index
        if user_signed_in?
      
         @garages = Garage.where(user_id: params[:id])
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
        respond_to do |format|
          format.html { render :show}
          format.json {render json: @garage}
        end
        else
        redirect_to user_session_path
        end
      end

      def new
        @garage = Garage.new(user_id: params[:format])
      end

      def create
        if user_signed_in?
          user = current_user
          @garage = Garage.new(garage_params)
          @garage.user_id = user.id
              if @garage.save
              redirect_to garages_path(user)
              else
              flash[:alert] = @garage.errors.full_messages
              end
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

          respond_to do |format|
          format.html { render :show}
          format.json {render json: @garage}
        end
          
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
