class Geofence < ApplicationRecord
	has_many :rants
	has_many :users
	geocode_by :address
	after_validation :geocode
end

