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
    @data = get_and_parse(request_uri)
  end

  def get_time
    travel_time_in_mins = @data['travel_time_minutes']
    if self.time.nil? && travel_time_in_mins.nil?
      self.time = 0
      travel_time_in_mins = 0
      new_time = travel_time_in_mins + self.time.to_i
      new_time
    else
      # Note to self
      # was trying to get actual time instead of minutes
      # ended up with adding the travel_time in minutes to
      # the year in the time string
      # Ex: below is actually doing 2018-02-21T19:00:02-500 + 31 (i.e. travel_time_minutes)
      #=> .... 2049 minutes
      # would like to be able to add 19:00:02-500 to travel_time_minutes
      # ex: 19:00:02-500 + 31
      # => 19:31:02-500
      @data['travel_time_minutes'] 
    end
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
