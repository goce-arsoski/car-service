class CarsController < ApplicationController
  before_action :find_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all.order('created_at DESC')
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(cars_params)
  end

  def edit
  end

  def update
    if @car.update(cars_params)
      redirect_to @car
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year, :vin, :mileage, :transmission, :drive_type, :color)
  end

  def find_car
    @car = Car.find_by(params[:id])
  end
end
