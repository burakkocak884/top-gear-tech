class CustomersController < ApplicationController
 def index
    @customers = Customer.all
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