class Geofence < ApplicationRecord
	has_many :rant
	has_many :user
end

