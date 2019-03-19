class Api::V1::CarsController < ApplicationController
  # skip_before_action :authorized, only: [:index]
  def index
    @cars = Car.all
    render :json => @cars
  end

  def create
    @car = Car.create(car_params)
    if @car.valid?
      render :json => @car, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def car_params
    params.require(:car).permit(:vin, :year, :make, :model, :color, :customer_id)
  end
end
