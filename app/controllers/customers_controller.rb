class CustomersController < ApplicationController
 def index
   if signed_in?
   

    @customers = Customer.where(garage_id: params[:format].to_i)
    @garage = Garage.find_by_id(params[:format].to_i)
  else
     redirect_to user_session_path
   end
  end

  def show

    @customer = Customer.find(params[:id])
  end

  def new
  @customer = Customer.new
  end

  def create
  @customer = Customer.create(customer_params)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
   @customer = Customer.find(params[:id])
  end
  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name,:email,:standing_balance)
  end
end