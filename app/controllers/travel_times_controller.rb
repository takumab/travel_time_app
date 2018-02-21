class TravelTimesController < ApplicationController


  def index
    @cm = CityMapperApi.new(params[:start], params[:end], params[:time_and_date], params[:arrival])
    # CityMapperApi.new('51.5201,0.0933', '51.5461,0.0742', '2018-02-21T19:00:02-0500', 'arrival')
  end
end
