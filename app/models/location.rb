class Location < ApplicationRecord
  geocoded_by :start_address
  after_validation :geocode
end
