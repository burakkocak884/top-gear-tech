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
    if signed_in?
    @garage = Garage.find(params[:id])
    redirect_to garage_path(@garage)
  else
    redirect_to new_user_session_path
  end
  end

  def new
   @garage = Garage.new
  end

  def create
   @garage = Garage.create(garage_params)
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def update
   @garage = Garage.find(params[:id])
  end
  private
  def garage_params
    params.require(:garage).permit(:name, :description, :total_cost)
  end
end
