class Location < ApplicationRecord
  geocoded_by :start_address
  after_validation :geocode

  has_one :destination 
end
