class Location < ApplicationRecord
  geocoded_by :start_address
  after_validation :geocode, if: :start_address_changed?

  has_one :destination, inverse_of: :location
  accepts_nested_attributes_for :destination
end
