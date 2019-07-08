class Geofence < ApplicationRecord
	has_many :rants
	has_many :users
	geocoded_by :address
	after_validation :geocode
end

