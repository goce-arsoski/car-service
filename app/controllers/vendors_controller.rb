class VendorsController < ApplicationController
  before_action :require_login
  before_action :find_vendor, only: [:show, :edit, :update, :destroy]

  def index
    @vendors = Vendors.all.order('created_at DESC')
  end

  def show
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(vendor_params)

    if @vendor.save
      redirect_to @vendor
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render :edit
    end
  end

  def destroy
    @vendor.destroy
    redirect_to vendors_path
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name, :contact, :website, :location)
  end

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end
end
