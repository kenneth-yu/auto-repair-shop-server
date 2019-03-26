class Api::V1::CustomersController < ApplicationController

  def index
    @customers = Customer.all
    render :json => @customers
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.valid?
      render :json => @customer, status: :created
    else
      render json: { error: 'failed to create job' }, status: :not_acceptable
    end
  end

  def update
    @customer =  Customer.find(params[:id])
    @customer.update(customer_params)
    if @customer.valid?
      render :json => @customer, status: :created
    else
      render json: {error: 'failed to update customer'}, status: :not_acceptable
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :dob, :balance, :img)
  end

end
