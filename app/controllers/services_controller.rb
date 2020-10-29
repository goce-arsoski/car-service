class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Services.all.order('created_at DESC')
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create(service_params)

    if @service.save
      redirect_to @service
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to @service
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:date, :car_kilometers, :work_description, :work_hours)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end
