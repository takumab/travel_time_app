class Location < ApplicationRecord
  geocoded_by :start_address
  after_validation :geocode, if: :start_address_changed?

  has_one :destination
  accepts_nested_attributes_for :destination


  def self.loc_coords
    latitude = Location.pluck(:latitude)
    longitude = Location.pluck(:longitude)
    lat_long = latitude.zip(longitude)
    lat_long.delete_if { |array| array.include?('0.0') }
    lat_long.delete_if { |array| array.include?(nil) }
  end

end
