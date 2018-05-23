require 'faraday'
require 'json'

class CityMapperApi
  attr_reader :startcoord, :endcoord, :arrival
  attr_accessor :time

  def initialize(startcoord, endcoord, time, arrival)
    @startcoord = startcoord
    @endcoord = endcoord
    @time = time
    @arrival = arrival
  end

  def get_time
    @data = get_and_parse(request_uri)
    travel_time_in_mins = @data['travel_time_minutes'] || 0
    travel_time_in_mins
  end



  private

  def get_and_parse(uri)
    response = Faraday.get(uri)
    JSON.parse(response.body)
  end

  def request_uri
    URI.parse("https://developer.citymapper.com/api/1/traveltime/?startcoord=#{@startcoord}&endcoord=#{@endcoord}&time=#{@time}&time_type=#{@arrival}&key=#{ENV['CITY_KEY']}")
  end

end
