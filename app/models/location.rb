class Location < ApplicationRecord
  geocoded_by :start_address
  after_validation :geocode, if: :address_changed?

  has_one :destination
end
