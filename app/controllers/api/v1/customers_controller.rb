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
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :dob, :balance)
  end

end
