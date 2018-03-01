class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
    2.times { @location.build_destination }
  end

  def show
  end

  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end



  private

  def set_location
    @location = Location.find(params[:id])
    @destination = @location.destination.address 
    slat_long = @location[:latitude].to_s + ',' + @location[:longitude].to_s
    dlat_long= @location.destination.latitude.to_s + ',' + @location.destination.longitude.to_s
    puts slat_long
    puts dlat_long
    @cm = CityMapperApi.new(slat_long, dlat_long, '2018-02-21T19:00:02-0500', 'arrival')
  end

  def location_params
    params.require(:location).permit(:start_address, destination_attributes: [:id, :address])
  end
end
