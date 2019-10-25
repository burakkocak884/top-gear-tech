class CustomersController < ApplicationController
     

        def index
            if user_signed_in?
              @customers = Customer.where(garage_id: params[:format].to_i)
              @garage = Garage.find_by_id(params[:format].to_i)
            else
              redirect_to user_session_path
            end
          end

      def show
         if user_signed_in?
              @customer = Customer.find(params[:id])
              respond_to do |format|
                  format.html { render :show}
                  format.json {render json: @customer.to_json(only: [:first_name, :last_name,:email,:standing_balance,:garage_id])}
              end
         else
          redirect_to user_session_path
         end
      end

      def new
       @customer = Customer.new
        @customer.build_vehicle
      end

      def create 
        if user_signed_in?
            @customer = Customer.new(customer_params)
              if @customer.save
               redirect_to customer_path(@customer)
              else
                flash[:alert] = @customer.errors.full_messages
                new_vehicle_path(@customer)
              end
        else
           redirect_to user_session_path
        end
      end

      def edit
        @customer = Customer.find(params[:id])
      end

      def update
          if user_signed_in?
          @customer = Customer.find(params[:id])
          @customer.update(customer_params)
          else
          redirect_to user_session_path
          end
      end

      def destroy
          if user_signed_in?
          customer = Customer.find(params[:id])
          customer.destroy
          redirect_to garages_path(current_user)
          else
            redirect_to user_session_path
          end
      end
 #test 

  private


    def customer_params
      params.require(:customer).permit(:first_name, :last_name,:email,:standing_balance, :vehicle_attributes => [:year, :make ,:model, :mileage, :license_plate, :color])
    end
end