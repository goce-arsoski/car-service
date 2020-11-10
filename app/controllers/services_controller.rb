class ServicesController < ApplicationController
  before_action :require_login
  before_action :find_service, only: [:edit, :update, :destroy]

  def new
    @car = Car.find(params[:car_id])
    # @parts = Part.all
    # @vendors = Vendor.all
    @service = @car.services.build
  end

  def create
    @car = Car.find(params[:car_id])
    # @parts = Part.all
    # @vendors = Vendor.all
    @service = @car.services.build(service_params)
    # @service.user = current_user

    if @service.save
      redirect_to @car
    else
      render :new
    end
  end

  def edit
    @car = @service.car
  end

  def update
    @car = @service.car

    if @service.update(service_params)
      redirect_to @car
    else
      render :edit
    end
  end

  def destroy
    car = @service.car

    @service.destroy
    redirect_to car
  end

  private

  def service_params
    params.require(:service).permit(:service_date, :service_mileage, :work_description, :work_hours)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end
