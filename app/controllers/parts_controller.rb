class PartsController < ApplicationController
  before_action :require_login
  before_action :find_part, only: [:show, :edit, :update, :destroy]

  def index
    @parts = Parts.all.order('created_at DESC')
  end

  def show
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.create(part_params)

    if @part.save
      redirect_to @part
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @part.update(part_params)
      redirect_to @part
    else
      render :edit
    end
  end

  def destroy
    @part.destroy
    redirect_to parts_path
  end

  private

  def part_params
    params.require(:part).permit(:part_number, :part_name, :cost, :part_designation, :quantity)
  end

  def find_part
    @part =  Part.find(params[:id])
  end
end
