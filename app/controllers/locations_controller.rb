class LocationsController < ApplicationController

  def index
      @locations = Location.all
      render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    render json: @location
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    render json: @location
  end

  private

  def location_params
    params.require(:location).permit(:area, :description, :latitude, :longitude, :user_id)
  end

end
